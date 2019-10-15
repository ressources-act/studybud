## *************************************
## Génération du logo pour l'application
## Gabriel Crépeault-Cauchon
## 15/10/2019
## *************************************
## Importation des packages nécessaires
# install.packages("hexSticker")
library(hexSticker)
?sticker

library(ggplot2)

p <- ggplot(aes(x = mpg, y = wt), data = mtcars) + geom_point()
p <- p + theme_void() + theme_transparent()

sticker(p, package="hexSticker", p_size=20, s_x=1, s_y=.75, s_width=1.3, s_height=1,
        filename="inst/figures/ggplot2.png")
sticker(plot(1:5), package = 'yo',
        p_size=20, s_x=.8, s_y=.6, s_width=1.4, s_height=1.2,
        filename = 'ouin.png')
