## *************************************
## Logo creation
## Gabriel Crépeault-Cauchon
## 15/10/2019
## *************************************
setwd(dirname(rstudioapi::getSourceEditorContext()$path))

## Importation des packages nécessaires
# install.packages("hexSticker")
library(hexSticker)
library(tidyverse)
## Background color : h_fill = "#d49e92"
## Create the hexSticker for README file and ShinyApp
sticker("test.png", package = 'studybud',
        h_fill = "#d49e92", h_color = '#d65133', p_color = 'black',
        p_y = 1.42,
        # s_width = .5, s_height = .18,
        s_x = 1, s_y = .7)
