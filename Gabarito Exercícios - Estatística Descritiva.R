#Exerc�cios - Estat�stica Descritiva (Gabarito)

#Exerc�cios - Medidas de tend�ncia Central e Dispers�o

#Calcule M�dia Aritm�tica, Mediana, Moda e (Primeiro e Terceiro Quartis) e analise o comportamento quanto a Simetria e a Curtose das seguintes distribui��es e diga qual medida de tend�ncia central, voc� acha que melhor representa a distribui��o dos dados, justificando sua escolha: 

#Instalando as bibliotecas
install.packages("e1071")
#Carregando as bibliotecas
require(e1071)

vetor_a=c(1,10,20,15,12,10,100,200,5)
media_aritmetica_a=mean(vetor_a)
mediana_a=median(vetor_a)
moda_a=as.numeric(names(table(vetor_a))[table(vetor_a) == max(table(vetor_a))])
#M�dia>Mediana>Moda:	Logo, temos uma assimetria � direita ou positiva e consequentemente os maiores valores da distribui��o se concentram � esquerda.

#V�rias de uma vez s�:
resumo_a=c(summary(vetor_a),"moda"=moda_a)
  
#assimetria
skewness(vetor_a)
#como j� sab�amos, temos uma assimetria � direita ou positiva e o coeficiente de assimetria de pearson corrobora a nossa an�lise, tendo um valor (>0).

#kurtose
kurtosis(vetor_a)
#k>0, Logo temos uma distribui��o leptoc�rtica (Pontiag�da)

vetor_b=c(50,40,55,60,65,67,69,70,75,80)
media_aritmetica_b=mean(vetor_b)
mediana_b=median(vetor_b)
#moda_b n�o existe, a Distribui��o � amodal, n�o possui moda, portanto n�o cai em nenhum dos tr�s casos conhecidos de assimetria e temos que utilizar obrigat�riamente o coeficiente de assimetria de pearson para conclus�o do tipo de assimetria

#V�rias de uma vez s�:
resumo_b=c(summary(vetor_b))

#assimetria
skewness(vetor_b)
#como o coeficiente de assimetria de pearson foi (<0)  temos uma assimetria � esquerda ou negativa e consequentemente uma maior concentra��o dos maiores valores da distribui��o � direita.

#Curtose
kurtosis(vetor_b)
#k<0, Logo, temos uma distribui��o platic�rtica (Achatada no plat�)

#Importante: S� poderemos afirmar qual medida representa melhor o conjunto, quando soubermos acerca da variabilidade dos dados. Portanto temos que calcular as medidas de dispers�o primeiro, para afirmar.

#Calcule Amplitude, Vari�ncia, Desvio padr�o e coeficiente de varia��o e diga qual distribui��o voc� acha que os dados s�o mais homog�neos, justificando sua escolha: 

#vetor_a
amplitude_a=diff(range(vetor_a))
variancia_a=var(vetor_a)
desvio_padrao_a=sd(vetor_a)
coeficiente_de_variacao_a=desvio_padrao_a/mean(vetor_a)*100

#Analisando a) separadamente, por meio do coeficiente de varia��o, que � a �nica medida de dispers�o que permite compara��es individuais, chegamos a conclus�o que seu coeficiente de varia��o foi muito superior ao limite que consideramos homog�neo (<=25 %), apresentando o valor 161% nos levando a concluir uma heterogeneidade elevada em suas observa��es.

#vetor_b
amplitude_b=diff(range(vetor_b))
variancia_b=var(vetor_b)
desvio_padrao_b=sd(vetor_b)
coeficiente_de_variacao_b=desvio_padrao_b/mean(vetor_b)*100

#J� analisando b) separadamente, por meio do coeficiente de varia��o, que � a �nica medida de dispers�o que permite compara��es individuais, chegamos a conclus�o que seu coeficiente de varia��o foi inferior ao limite que consideramos homog�neo (<=25 %), apresentando o valor 19% nos levando a concluir uma distribui��o homog�nea em suas observa��es.

#Conclus�es gerais:

#Analisando conjuntamente, Percebemos que a distribui��o de a) considerando todas as medidas de dispers�o, foi a mais heterog�nea e portanto apresentou uma maior distanciamento de seus valores em torno da m�dia.

#Dessa forma, conseguimos ent�o agora dizer que a m�dia seria a melhor medida para ser utilizada em b) por ser uma distribui��o mais homog�nea, n�o tendo problemas com sua propriedade de ser vol�til (Sens�vel a valores extremos), em contrapartida a) seria melhor representada pela mediana e moda, uma vez que s�o estat�sticas mais robustas (Menos sens�veis a valores extremos).



