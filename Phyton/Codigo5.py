import os
import numpy as np
import pandas as pd
from sklearn.linear_model import Perceptron, SGDClassifier
import matplotlib.pyplot as plt
# Obtener la ruta del directorio actual
path=os.getcwd()
# Cargar datos
dataset=pd.read_csv(path+'\\e-commerce-tres.csv', sep=';')
print(dataset)
# Tomar hasta uno antes de acabar
X=dataset.iloc[:,:-1]
print('X:\n',X)
# Tomar sólo la última columna
y=dataset.iloc[:,-1]
print('y:\n',y)
print(type(y))
# Configurar al perceptron
MaxIter=20
ppn=Perceptron(max_iter=MaxIter, eta0=0.1, shuffle=True)
ppn.fit(X, y)
# Predicción y armado de archivo de salida
y_pred = ppn.predict(X)
print('y_pred0:',y_pred)
y_pred = pd.Series(ppn.predict(X), name='y')
print('y_pred:',y_pred)
# Juntar los (X1, X2) con su predicción
testdata = X.join(y_pred, how='outer')
print('testdata: ', testdata)
# Escribir los resultados de prediccón en un archivo
testdata.to_csv(path+r'\\prediccion.csv', index=False)

# Graficar el conjunto de entrenamiento
label=y.copy()
print(type(label))
print('Etiquetas (paso 1):', label)
label[label<0]=0
print('Etiquetas (paso 2):', label)
label=label.astype(int)
print('Etiquetas (paso 3):', label)
label=label.values
print('Etiquetas (paso 4):', label)
print(type(label))
colormap=np.array(['r','b'])
print(colormap)
plt.scatter(X.iloc[:,0], X.iloc[:,600], marker='o', c=colormap[label])

# Graficar el conjunto de prueba
labelt=y_pred.copy()
print(type(labelt))
print('EtiquetasT (paso np):', labelt)
labelt[labelt<0]=0
print('Etiquetas (paso 2):', labelt)
labelt=labelt.astype(int)
print('Etiquetas (paso 3):', labelt)
labelt=labelt.values
print('Etiquetas (paso 4):', labelt)
print(type(labelt))
colormap=np.array(['k','y'])
print(colormap)
plt.scatter(X.iloc[:,0], X.iloc[:,1], marker='^', c=colormap[labelt])
# Calcular el hiperplano
w = ppn.coef_[0]
w0 = w[0]
w1 = w[1]
b = ppn.intercept_[0]
xx=np.linspace(0, 4)
yy=-(w0*xx+ppn.intercept_[0])/w1
# Graficar la línea
plt.plot(xx, yy, 'g-', label='$Hiperplano$')
plt.title(u'Iteraciones = %d' % MaxIter)
plt.legend()
plt.savefig(path+'\\perceptron.png')
plt.show()

# Calcular la exactitud
cuenta=0
for i in range(len(y_pred)):
    if y.iloc[i]==y_pred.iloc[i]:
        cuenta+=1.0
accuracy=cuenta/float(len(y_pred))*100
print ('Exactitud: %.2f%%' % accuracy)

# # BARRIDO 1: Variar a MaxIter (cuántas iteraciones como máximo
# # MaxIter : El número máximo de pasadas sobre los datos de entrenamiento
# # eta0 : Constante por el que las actualizaciones son multiplicadas
# print('**************** 1ER BARRIDO - MaxIter/Shuffle=True ****************')
# for i, MaxIter in enumerate([3, 6, 9, 12, 15, 18, 21, 24, 27]):
#     ppn = Perceptron(max_iter=MaxIter, eta0=0.1, shuffle=True)
#     ppn.fit(X, y)
#     plt.subplot(3, 3, i + 1) #i+1 is the index
#     plt.subplots_adjust(wspace=0.4, hspace=0.4)
# # Predicción
#     y_pred = pd.Series(ppn.predict(X), name='y')
#     testdata = X.join(y_pred, how='outer')
#     label = y.copy()
#     label[label < 0] = 0
#     label = label.astype(int)
#     label = label.values
#     colormap = np.array(['r', 'b'])
#     plt.scatter(X.iloc[:, 0], X.iloc[:, 1], marker='o', c=colormap[label])
# # Graficar el conjunto de prueba
#     labelt = y_pred.copy()
#     labelt[labelt < 0] = 0
#     labelt = labelt.astype(int)
#     labelt = labelt.values
#     colormap = np.array(['k', 'y'])
#     plt.scatter(X.iloc[:, 0], X.iloc[:, 1], marker='^', c=colormap[labelt])
#     cuenta = 0
#     for i in range(len(y_pred)):
#         if y.iloc[i] == y_pred.iloc[i]:
#             cuenta += 1.0
#     accuracy = cuenta / float(len(y_pred)) * 100
#
# # Calcular el hiperplano
#     w = ppn.coef_[0]
#     w0 = w[0]
#     w1 = w[1]
#     b = ppn.intercept_[0]
#     xx = np.linspace(0, 4)
#     yy = -(w0 * xx + ppn.intercept_[0]) / w1
#     # Graficar la línea
#     plt.plot(xx, yy, 'g-', label='$Hiperplano$')
#     plt.title(u'Iter: ' + str(MaxIter) + '; Exact: ' + str(accuracy))
#     plt.legend()
# plt.show()