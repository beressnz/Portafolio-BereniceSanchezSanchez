import seaborn as sns;
import matplotlib.pyplot as plt
import pandas as pd

sns.set(style="white", color_codes=True)

iris = pd.read_csv("e-commerce.csv", sep=';', names=["Amount","Quantity","Profit","Category"])
print(iris.head())
print(iris)

atributo='Quantity'
atributo2='Profit'
atributo3='Amount'
clase='Category'

# Distribución
sns.kdeplot(data=iris, x=atributo)  #No puede ir Clase, es categórico
plt.show()

# Usar suavizado extremo
sns.kdeplot(data=iris, x=atributo, bw_adjust=5, cut=0) #No puede ir Clase
plt.show()

# Usar distribuciones condicionales con mapeado Hue de una segunda variable
sns.kdeplot(data=iris, x=atributo2, hue=clase)
plt.show()

# Stack de las distribuciones condicionales
# Opciones de multiple: “layer”, “stack”, “fill”
sns.kdeplot(data=iris, x=atributo, hue=clase, multiple="fill")
plt.show()

# Normalizar la distribucion stacked
sns.kdeplot(data=iris, x=atributo, hue=clase, multiple="fill")
plt.show()

# Distribuciones acumuladas
sns.kdeplot(
    data=iris, x=atributo, hue=clase,
    cumulative=True, common_norm=False, common_grid=True,
)
plt.show()