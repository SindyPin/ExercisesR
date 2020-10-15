install.packages("tidyverse")
install.packages("janitor")
install.packages("devtools")
install.packages("remotes")
remotes::install_github("cienciadedatos/datos")

# Paquetes que iremos utilizar:
library(tidyverse)
library(datos)

# \ [] () ? {} . * | ^ + - !

# Las posibilidades que existen con la funcion filter()

paises
view(paises)

paises %>%
        filter(pais = "México")

paises %>%
        filter(pais == "Corea")

# El comando str_detect ayuda a buscar palabras que no estén exactamente escritos de la misma forma
# Además ayuda a buscar palabras con acento y sin acento en el mismo comando
paises %>%
        filter(str_detect(pais, "Corea")) %>%
        count(pais)

paises %>%
        filter(str_detect(pais, "Per"))

paises %>%
        filter(str_detect(pais, "M[e|é]xico"))

# Importar datos
telefonos <- read_csv("https://raw.githubusercontent.com/rivaquiroga/latinr-taller-regex/master/datos/telefonos.csv")

head(telefonos)

# Miremos las ciudades:
telefonos %>%
        count(ciudad)

telefonos %>%
        filter(str_detect(ciudad, "quilpu[e|é]"))

# Observar la diferencia del siguiente comando con el anterior:
# Ovservar que en el siguiente caso busca "quilpué" e palabras terminadas en "é", como "Olmué"
telefonos %>%
        filter(str_detect(ciudad, "quilpue|é"))

telefonos %>%
        filter(str_detect(ciudad, "[V|v]alpara[i|í]so"))

# case_when: función que modifica una variable de acuerdo a los parámetros que le pase:
telefonos %>%
        mutate(ciudad = case_when(
                str_detect(ciudad, "[V|v]alpara[i|í]so") ~ "Valparaíso",
                TRUE ~ as.character(ciudad)
        ))

telefonos %>%
        count(ciudad_limpia)

# Parte 2:
# Datos:
peliculas <- read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2020/2020-02-19/ranking_imdb.csv")
pinguinos <- datos::pinguinos
animales <- read_csv("https://raw.githubusercontent.com/rivaquiroga/latinr-taller-regex/master/datos/animales.csv")

# Función separe():
pelis_sep <- peliculas %>%
        separate(genero, into = c("genero_principal", "genero_secundario"), sep = ",", remove = FALSE, extra = "merge")

# Función separate_rows(): Separa columnas
pelis_row <- peliculas %>%
        separate_rows(genero, sep = ",")

# Función pivot_longer(): Une columnas
pinguinos <- datos::pinguinos

pinguinos_L1 <- pinguinos %>%
        pivot_longer(largo_pico_mm:masa_corporal_g, 
                     names_pattern = "(.*_.*)_(.*))", 
                     names_to = c("variable", "unidad"))

# Función pivot_longer() e función separate_rows(): Separo e uno columnas en un mismo comando:
animales <- read_csv("https://raw.githubusercontent.com/rivaquiroga/latinr-taller-regex/master/datos/animales.csv")

animales %>%
        pivot_longer(starts_with("s"), names_pattern = "(.*)_monitoreo(.*)_(.*)",
                     names_to = c("sitio", "annio", "mes")) %>%
        separate_rows(value)

