require(e1071)
install.packages ("moments")
library(moments)

# 1. Crio um vetor com os valores a serem analisados:
c0 = c(2,3,6,9)

# 2. Calculo a Média do vetor:
mean(c0)

# 3. Calculo a Mediana:
median(c0)

# 4. Vejo um resumo dos cálculos 
# (vai me dar o mín o máx, a média, a mediana e o 1o e 3o quartis):
summary(c0)

# 5. Aplico o comando responsável por criar uma janela gráfica
# para que sejam exibidos os gráficos, 
# 2x2 (4 gráficos), 3x3 (9 gráficos) e assim por diante, 
# a primeira orientação é por linha e a segunda é por coluna, 
# (3,1) uma coluna com 3 gráficos, é o mesmo que o conceito de matrízes.
par(mfrow=c(2,2))

# 6. Ploto o gráfico de barras:
barplot(c0)

# 7. Ploto os histogramas: 
# a) de frequência relativa:
hist(c0)
# b) de densidade relativa (vai de 0 a 1):
hist(c0,probability = T)

# 8. Adiciono a linha de densidade:
lines(density(c0))

# 9. Calculo a assimetria:
# Skewness is a measure of symmetry, or more precisely, the lack of symmetry. 
# A distribution is symmetric if it looks the same to the left and right of the center point.
# https://www.itl.nist.gov/div898/handbook/eda/section3/eda35b.htm
skewness(c0)

# 10. Calculo o valor de Kurtosis:
# Kurtosis is a measure of whether the data are heavy-tailed or light-tailed relative to 
# a normal distribution. That is, data sets with high kurtosis tend to have heavy tails, 
# or outliers. Data sets with low kurtosis tend to have light tails, or lack of outliers. 
# A uniform distribution would be the extreme case.
# https://www.itl.nist.gov/div898/handbook/eda/section3/eda35b.htm
kurtosis(c0)

#LEMBRAR!
# pelo R, temos que se:
# k>0, leptocúrtica
# k=0, Mesocúrtica
# k<0, Platicúrtica

#amostra1:
c1=c(7,1,5,2,3,1,6)

#média da amostra1:
mean(c1)

#mediana da amostra1:
#Observar que o valor da média é maior que o valor da mediana
median(c1)

#moda da amostra1 (R não tem uma fórmula da moda):
as.numeric(names(table(c1))[table(c1) == max(table(c1))])

#Observar que o valor da mediana é maior que o valor da moda
#Distribuição à direita (observar no histograma)
barplot(c1)
hist(c1)
hist(c1,probability=T)
lines(density(c1))
skewness(c1)
kurtosis(c1)
sumary(c1)