import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

# Generar los datos
# x = np.random.randn(500)
# dos variable
iris = pd.read_csv("Tienda.csv", sep=';', names=["Amount","Quantity","Profit","Category"])
print(iris.head())
print(iris)

atributo='Quantity'
atributo2='Profit'
atributo3='Amount'
clase='Category'

df2 = pd.read_csv("Tienda.csv", sep=';', names=["Amount","Quantity","Profit","Category"])
print(iris.head())
print(iris)
# 50 observaciones con 4 columnas


df2.plot(kind='scatter', x='Amount', y='Profit', s=df2['Quantity']*30);#Grafica multivariada con tres variable
#df2.plot(kind='scatter', x='Amount', y='Quantity');   #Con dos variables


plt.show()