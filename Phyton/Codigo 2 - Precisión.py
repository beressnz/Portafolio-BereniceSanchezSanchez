# https://github.com/Nataceved/arboles-de-decisi-n/blob/master/ARBOLES%20DE%20DECISIONES.ipynb
# https://gist.github.com/michhar/2dfd2de0d4f8727f873422c5d959fff5       --Dataset
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier, export_graphviz
from pydotplus import graph_from_dot_data
from sklearn import preprocessing
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score

# Cargar datos

df= pd.read_csv("dataset-ecommerce.csv", sep=';')
print(df.head())
print(df.shape)

# Codifica etiquetas con valores entre 0 y número de clases - 1
le = preprocessing.LabelEncoder()
# Hace transformaciones y luego ajusta sus valores
df['Category'] = le.fit_transform(df['Category'])
print(df.head())
print(df.shape)

# PRIMER MODELO
# Seleccionamos los atributos para clasificar
X = df[['Category', 'Amount', 'Profit']]
# Seleccionamos la clase a trabajar
y = df['Quantity']

# Dividir en conjuntos de entrenamiento y pruebas
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.33, random_state=42)

# Configura el árbol
tree = DecisionTreeClassifier()
# Entrenar
tree.fit(X_train, y_train)

# Predecimos sobre nuestro set de entrenamieto
y_train_pred = tree.predict(X_train)
# Predecimos sobre nuestro set de test
y_test_pred = tree.predict(X_test)
# Comaparamos con las etiquetas reales
print('Precisión sobre conjunto de entrenamiento:', accuracy_score(y_pred=y_train_pred,y_true=y_train))
print('Precisión sobre conjunto de Prueba:', accuracy_score(y_pred=y_test_pred,y_true=y_test))

# SEGUNDO MODELO
# Seleccionamos los atributos para clasificar
X = df[['Category', 'Amount', 'Profit']]
# Seleccionamos la clase a trabajar
y = df['Quantity']

# Dividir en conjuntos de entrenamiento y pruebas
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.33, random_state=42)

# Entrenar
tree.fit(X_train, y_train)
print(DecisionTreeClassifier)

# Predecimos sobre nuestro set de entrenamieto
y_train_pred = tree.predict(X_train)
# Predecimos sobre nuestro set de test
y_test_pred = tree.predict(X_test)
# Comaparamos con las etiquetas reales
print('Precisión sobre conjunto de entrenamiento:', accuracy_score(y_pred=y_train_pred,y_true=y_train))
print('Precisión sobre conjunto de Prueba:', accuracy_score(y_pred=y_test_pred,y_true=y_test))
