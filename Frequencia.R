# Instalar o pacote Hmisc e fazer o requerimento (via "require" ou via "library").
# "require" vai dar como resposta FALSE/TRUE e "library" vai dar erro
install.packages("Hmisc")
require(Hmisc)

# Módulo 2 - Aula 1 - Tipos de Frequências

# Primeira Forma de Como criar um vetor:
# Defino a variável - o "c" deve ser colocado para definir 
# aonde começa o meu vetor. Se colocar c() vai me dar NULL como resposta
idade = c(10, 10, 10, 10, 30, 30, 30, 30, 30, 30, 30, 30, 
          50, 50, 50, 50, 70, 70, 70, 90)

# Segunda Forma cde Como criar um vetor:
# Coloco entre () as idades e as frequências simples (idade, frequência simples)
idade = c(rep(10,4), rep(30,8), rep(50,4), rep(70,3), 90)

# Fi (Freq. Simples) --> Comando table()
fi = table(idade)

# Visual Excel (como criar tabelas de visualização como as do Excel?):
dados_simples = data.frame(fi)

# Fac (Freq. Acumulada) --> Comando cumsum()
fac = cumsum(fi)

# Adiciono uma 3ra coluna no Visual Excel para a Fac:
dados_simples$fac = fac

# Equação da Frequência Relativa Simples (Fr):
fr = fi / sum(fi)

# Adiciono uma 4ta coluna no Visual Excel para a Fr:
dados_simples$fr = fr

# Equação da Frequência Relativa Acumulada (Frac):
frac = fac / sum(fi)

# Adiciono uma 5ta coluna no Visual Excel para a Frac:
dados_simples$frac = frac

# Obtendo a Fi e a Fr de forma automática:
describe(idade)

