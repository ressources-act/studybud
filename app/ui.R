library(shiny)
library(magrittr)
library(MASS)
library(nlme)

# AStuces pour Rmd : https://holtzy.github.io/Pimp-my-rmd/#hide_code
# Créer ses propres templates : https://bookdown.org/yihui/rmarkdown/document-templates.html

# Fichier pour configurer l'interface utilisateur
shinyUI(fluidPage(
    titlePanel("studybud"),
    withMathJax(),
        mainPanel(
            img(src='studybud.png', align = "right", width = "20%", height = "20%"),
            uiOutput('filelst'),
            actionButton('random_card', 'Carte au hasard'),
            hr(),
            htmlOutput('flashcard')
        )
    )
)