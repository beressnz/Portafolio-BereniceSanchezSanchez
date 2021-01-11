# https://inteligencia-analitica.com/arboles-decision-python/
# http://users.stat.ufl.edu/~winner/datasets.html
# https://www.kaggle.com/wenruliu/adult-income-dataset   -dataset
import pandas as pd
import os
import matplotlib.pylab as plt
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import classification_report
from sklearn import tree
from io import StringIO
from IPython.display import Image
import sklearn.metrics

# Cargamos el fichero de datos.
dataset = pd.read_csv("dataset-ecommercefinal.csv", names=['Amount', 'Profit', 'Quantity','Score','Category'],sep=';')
print(dataset.head(20))

# Eliminamos los datos con valores missing porque si no, no se podrá entrenar
data_clean = dataset.dropna()
print(data_clean.head(20))

# Tipo de dato de cada atributo
print(data_clean.dtypes)

# Principales estadísticos
print(data_clean.describe())

# Se definen las variables predictoras
predictors = data_clean[[ 'Quantity',]]
# Se define la variable objetivo
targets = data_clean.Category

# Conjuntos de prueba y entrenamiento. Porcentaje: 40%
X_train, X_test, y_train, y_test = train_test_split(predictors, targets, test_size=.4)
print(X_train.shape)
print(X_test.shape)
print(y_train.shape)
print(y_test.shape)

# Construimos el árbol con los datos de entrenamiento
# Utilizar el parámetro max_depth=2,3, etc
classifier=DecisionTreeClassifier()
classifier=classifier.fit(X_train, y_train)
print(classification_report)
print(classifier)


#Predecimos para los valores del grupo de Entrenamiento
predicciones=classifier.predict(X_train)
print("Lo que se queria decir: ")
print(y_train)
print("Lo que se dijo: ")
print(predicciones)
# Matriz de confusión para entrenamiento
print(sklearn.metrics.confusion_matrix(y_train,predicciones))
# Mediciones de Accuracy, resume la Matriz de Confusión y la cantidad de aciertos.
sklearn.metrics.accuracy_score(y_train, predicciones)

#Predecimos para los valores del grupo Test
predicciones=classifier.predict(X_test)
print("Lo que se queria decir: ")
print(y_test)
print("Lo que se dijo: ")
print(predicciones)
# Matriz de confusión para pruebas
print(sklearn.metrics.confusion_matrix(y_test,predicciones))
# Mediciones de Accuracy, resume la Matriz de Confusión y la cantidad de aciertos.
sklearn.metrics.accuracy_score(y_test, predicciones)

# El árbol en el archivo DOT
out = StringIO()
tree.export_graphviz(classifier, out_file="treeEcommerce.dot")

# Graficar el árbol
tree.plot_tree(classifier)
plt.show()