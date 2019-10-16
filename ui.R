library(shiny)
library(magrittr)
library(MASS)
library(nlme)

# AStuces pour Rmd : https://holtzy.github.io/Pimp-my-rmd/#hide_code
# Créer ses propres templates : https://bookdown.org/yihui/rmarkdown/document-templates.html

# Fichier pour configurer l'interface utilisateur
shinyUI(fluidPage(
    titlePanel("Study buddy"),
    withMathJax(),
        mainPanel(
            h1("Aide à l'étude"),
            uiOutput('filelst'),
            actionButton('random_card', 'Carte au hasard'),
            hr(),
            htmlOutput('flashcard')
        )
    )
)