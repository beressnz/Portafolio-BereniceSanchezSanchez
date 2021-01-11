
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from sklearn.svm import SVC
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report, confusion_matrix

# Conjunto de datos en el URL
url = "dataset-ecommercefinal.csv"
# Nombre de las columnas
colnames = ['Amount', 'Profit', 'Quantity', 'Score', 'Category']
# Leer el conjunto de datos pandas dataframe
irisdata = pd.read_csv(url, names=colnames,sep=';')

# Preparar los atributos de entrada
X = irisdata.drop('Category', axis=1)
# Preparar el objetivo
y = irisdata['Category']

# Dividir en cojuntos de prueba y entrenamiento
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.20)

# PRIMER MODELO - KERNEL='linear'
# Caso simple es el lineal
print('*** Lineal ***')
svclassifier = SVC(kernel='linear')
svclassifier.fit(X_train, y_train)
y_pred = svclassifier.predict(X_test)
print(confusion_matrix(y_test, y_pred))
print(classification_report(y_test, y_pred))

# PRIMER MODELO - KERNEL='poly'
# Caso simple es el lineal
print('*** Poly ***')
svclassifier = SVC(kernel='poly', degree=8)
svclassifier.fit(X_train, y_train)

y_pred = svclassifier.predict(X_test)

print(confusion_matrix(y_test, y_pred))
print(classification_report(y_test, y_pred))

# SEGUNDO MODELO - KERNEL='rbf' (Gaussiano)
print('*** Kernel Gaussiano ***')
svclassifier = SVC(kernel='rbf')
svclassifier.fit(X_train, y_train)

y_pred = svclassifier.predict(X_test)

print(confusion_matrix(y_test, y_pred))
print(classification_report(y_test, y_pred))


