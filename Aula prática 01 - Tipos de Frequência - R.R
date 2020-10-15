#Primeira forma de criar o vetor

idade=c(10,10,10,10,30,30,30,30,30,30,30,30,50,50,50,50,70,70,70,90)

#Segunda forma de criar o vetor

idade=c(rep(10,4),rep(30,8),rep(50,4),rep(70,3),90)

#Achando as Frequências simples

frequencia_simples=table(idade)

#Visual excel

dados_simples=data.frame(frequencia_simples)

#Frequência acumulada

frequencia_acumulada=cumsum(frequencia_simples)

#Adicionando coluna com acumulada 

dados_simples$frequencia_acumulada=frequencia_acumulada

#Frequência relativa simples

frequencia_relativa_simples=frequencia_simples/sum(frequencia_simples)

#Adicionando a Frequência relativa simples

dados_simples$frequencia_relativa_simples=frequencia_relativa_simples

#Frequência relativa acumulada 

frequencia_relativa_acumulada=frequencia_acumulada/sum(frequencia_simples)

dados_simples$frequencia_relativa_acumulada=frequencia_relativa_acumulada

#Achando automaticamente a frequência simples e relativa simples

describe(idade)

