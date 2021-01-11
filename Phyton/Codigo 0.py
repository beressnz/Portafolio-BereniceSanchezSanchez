from pandas import read_csv
from pandas.plotting import scatter_matrix
from matplotlib import pyplot
from sklearn.model_selection import train_test_split
from sklearn.model_selection import cross_val_score
from sklearn.model_selection import StratifiedKFold
from sklearn.metrics import classification_report
from sklearn.metrics import confusion_matrix
from sklearn.metrics import accuracy_score
from sklearn.linear_model import LogisticRegression
from sklearn.tree import DecisionTreeClassifier
from sklearn.neighbors import KNeighborsClassifier
from sklearn.discriminant_analysis import LinearDiscriminantAnalysis
from sklearn.naive_bayes import GaussianNB
from sklearn.svm import SVC
from sklearn.datasets import make_blobs

# # Versión de Python
# import sys
# print('Python: {}'.format(sys.version))
# # Versión de Scipy
# import scipy
# print('Scipy: {}'.format(scipy._version_))
# # Versión de Numpy
# import numpy
# print('Numpy: {}'.format(numpy._version_))
# # Versión de Matplotlib
# import matplotlib
# print('Matplotlib: {}'.format(matplotlib._version_))
# # Versión de Pandas
# import pandas
# print('Pandas: {}'.format(pandas._version_))
# # Versión de Sklearn
# import sklearn
# print('Sklearn: {}'.format(sklearn._version_))

#Carga del conjunto de datos
#="https://raw.githubusercontent.com/jbrownlee/Datasets/master/iris.csv" #Se conecta en la nube
url="dataset-sintitulo.csv"
names=['Amount','Profit','Quantity','Category']

dataset=read_csv(url,names=names, sep=';')
#shape
print(dataset.shape) # es un objeto de panda , muestra cuantas colunas y cuantas filas hay
#head
print(dataset.head(20)) # muestras los datos de las filas que se le indique en este caso son 20

#descriptions
print(dataset.describe())

#class distribution
print(dataset.groupby('Category').size())

#box and whisker plots
# dataset.plot(kind='box',subplots=True, layout=(11,11),sharex=False, sharey=False)
# pyplot.show()

# #Histograma
dataset.hist()
pyplot.show()

#scatter plot matrix
# scatter_matrix(dataset)
# pyplot.show()

#------------------------------
# Division del conjunto de datos
#-------------------------------

conjunto = dataset.values
print('Tamaño de conjunto: ', len(conjunto))
print('Tipo de conjunto: ', type(conjunto))
x = conjunto[:,0:3]
y = conjunto[:,3]
x_entrenamiento, x_validacion, y_entrenamiento, y_validacion = train_test_split(x, y, test_size=0.2)
print('\n********** Conjunto x ********')
print('Tamaño de x: ',len(x))
print('Tipo de x: ',type(x))
print(x)
print('\n********** Conjunto y ********')
print('Tamaño de y: ',len(y))
print('Tipo de y: ',type(y))
print(y)
print('\n********** Conjunto x entrenamiento ********')
print('Tamaño de x entrenamiento: ',len(x_entrenamiento))
print('Tipo de x entrenamiento: ',type(x_entrenamiento))
print(x_entrenamiento)
print('\n********** Conjunto y entrenamiento ********')
print('Tamaño de y entrenamiento: ',len(y_entrenamiento))
print('Tipo de y entrenamiento: ',type(y_entrenamiento))
print(y_entrenamiento)
print('\n********** Conjunto x validación ********')
print('Tamaño de x validación: ',len(x_validacion))
print('Tipo de x validación: ',type(x_validacion))
print(x_validacion)
print('\n********** Conjunto y validación ********')
print('Tamaño de y validación: ',len(y_validacion))
print('Tipo de y validación: ',type(y_validacion))
print(y_validacion)

modelosML=[]
modelosML.append(('LR',LogisticRegression(solver='liblinear',multi_class='ovr')))
modelosML.append(('LDA',LinearDiscriminantAnalysis()))
modelosML.append(('KNN',KNeighborsClassifier()))
modelosML.append(('CART',DecisionTreeClassifier()))
modelosML.append(('NB',GaussianNB()))
modelosML.append(('SVM',SVC(gamma='auto')))

# Mostrar los modelos
print('\n**** MODELOS SELECCIONADOS ****')
print('Tipo de modelosML: ',type(modelosML))      # modelosML es una lista
for i in modelosML:
    print('\t'+str(i))                            # i es una tupla
print('Tipo de i: ',type(i))


resultados=[]
nombres=[]
print('Modelo: Promedio (Desviación estándar)')
for nombre, modelo in modelosML:
    kfold = StratifiedKFold(n_splits=10, random_state=1, shuffle=True)
    cv_resultados = cross_val_score(modelo, x_entrenamiento, y_entrenamiento, cv=kfold, scoring='accuracy')
    resultados.append(cv_resultados)
    nombres.append(nombre)
    # print(cv_resultados)
    # print(resultados)
    print('%s:%f (%f)' % (nombre, cv_resultados.mean(), cv_resultados.std()))
    print('Tipo de kfolds: ', type(kfold))
    print(kfold)  # Es de sklearn
    print('Tipo de cv_resultados: ', type(cv_resultados))
    print(cv_resultados)  # Es arreglo de numpy
    print('Tipo de resultados: ', type(resultados))
    print(resultados)

# # Hacer predicciones usando el modelo LDA
print('* MODELO LDA *')
modelo = LinearDiscriminantAnalysis()
modelo.fit(x_entrenamiento, y_entrenamiento)
predicciones = modelo.predict(x_validacion)
# Evaluacpin con el conjunto de validación
print('Modelo utilizado: ', modelo)
print('Predicciones:\n', predicciones)
print('Salidas correctas:\n',y_validacion)
# Hacer una sola predicción
unaPrediccion = modelo.predict([[4.9, 3, 1]])
print('Una predicción: ',unaPrediccion)

# # Evaluar las predicciones
print('Precisión del modelos LDA: ',accuracy_score(y_validacion, predicciones))
print('Matriz de confusión LDA:\n',confusion_matrix(y_validacion, predicciones))
print('Reporte del modelo LDA:\n',classification_report(y_validacion, predicciones))