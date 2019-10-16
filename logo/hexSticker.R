## *************************************
## Génération du logo pour l'application
## Gabriel Crépeault-Cauchon
## 15/10/2019
## *************************************
## Importation des packages nécessaires
# install.packages("hexSticker")
library(hexSticker)
library(tidyverse)

imgurl <- system.file("question.png", mustWork = T)
sticker("test.png", package = 'studybud',
        h_fill = 'gray', h_color = 'blue', p_color = 'orange',
        p_y = 1.42,
        s_width = .5, s_height = .30,
        s_x = 1, s_y = .7)

sticker(gg,
        package="studybud", p_size=8, s_x=.8, s_y=.6, s_width=1.4, s_height=.7,
        p_color = 'orange', spotlight = T, h_color = 'orange',
        filename="baseplot.png", url = 'ouin.com')

