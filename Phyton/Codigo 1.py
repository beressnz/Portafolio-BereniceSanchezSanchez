from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestRegressor
from sklearn.preprocessing import StandardScaler
from sklearn import metrics
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
# Lectura del conjunto de datos

df= pd.read_csv("dataset-ecommerce.csv", sep=';')
# Primeros datos
print(df.head(15))
# Datos estadísticos
print(df.describe())

# Preparando los datos
X = df.iloc[:, 0:3].values
y = df.iloc[:, 3].values

# Dividiéndolos
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=0)
# Preprocesamiento
# Escalado
sc = StandardScaler()
X_train = sc.fit_transform(X_train)
X_test = sc.transform(X_test)
print('X_train',X_train)
print('X_test',X_test)

# Configurar el RF
# http://scikit-learn.org/stable/modules/generated/sklearn.ensemble.RandomForestClassifier.html
clasificador = RandomForestRegressor(n_estimators=4, random_state=80)
clasificador.fit(X_train, y_train)
y_pred = clasificador.predict(X_test)
print(y_pred[:20])
print(y_pred.dtype)
y_pred=np.around(y_pred, decimals=0)
print(y_pred.dtype)
print(y_test[:20])
print(y_test.dtype)
print(confusion_matrix(y_test,y_pred))
print(classification_report(y_test,y_pred))
print(accuracy_score(y_test, y_pred))