setwd("D:/Dropbox/Cursos impartidos/Estad�stica-Computacional/EM")
library(foreign)
library(mvtnorm)

table <- read.dta("datos_politicos.dta") # LEEMOS LOS DATOS DE FORMATO STATA
a�o <- 1986 # POR EL MOMENTO ESCOJAMOS UN SOLO A�O PUES NO SABEMOS NADA DE DATOS PANEL
data <- table[table$year==a�o, ]
labels <- paste(names(data), attributes(data)$var.labels, sep=": ") # NOMBRES DE LAS VARIABLES

Y <- data$reg # INDICADORA DE SI SE ES O NO UNA DEMOCRACIA
list.depend <- c("level", "open", "g", "strikes", "govpwt", "ls", "invpwt",
                 "fertil", "lfagric", "popg", "femsec", "EnergProd") # VARIABLES ECON�MICAS EXPLICATIVAS
