# Library

library(tidyverse)

## Instalando o inmetR

install.packages("devtools")

library(devtools)

install_github('lhmet/inmetr')

library(inmetr)

#### Verificando:

tbl <- bdmep_meta

### Usando o Tidyverse (filter):

# Primeiro argumento: QUEM?
# Segundo: COMO?

tbl_BA <- filter(tbl, uf == "BA")

id <- 83229

## Importando dados: 

start_date <- "01/01/1961"

end_date <- format(Sys.Date(), "%d/%m/%Y")

met_data <- bdmep_import(id = id,
                         sdate = start_date, 
                         edate = end_date, 
                         email = "adwgandu@gmail.com",
                         passwd = "*******",
                         verbose = TRUE)

write.csv(met_data, "met_salvador.csv")
