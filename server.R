library(shiny)
library(magrittr)
library(MASS)
library(nlme)

# Ce fichier sert de backend à l'application
shinyServer(function(input, output, session) {
    ## Indiquer dans le dropdown tous les fichiers html contenus dans le folder flashcards/
    files <- list.files(path = 'flashcards/', recursive = T, pattern = "*.html")
    output$filelst <- renderUI({
        selectInput('files', label = 'Choisir un fichier', choices = files)
    })
    
    ## Bouton pour sélectionner aléatoirement une carte
    observeEvent(input$random_card, {
        choose_from <- files[-match(input$files, files)]
        updateSelectInput(session, inputId = 'files',
                          label = 'Choisir un fichier', choices = files,
                          selected = sample(choose_from, 1))
    })
    
    output$flashcard <- renderUI({
        input$files %>% 
            paste0('flashcards/', .) %>% 
            includeHTML() %>% 
            withMathJax()
        # On pourrait même mettre un mode random
        # withMathJax(includeHTML(paste0('flashcards/', input$files)))
    })
})
