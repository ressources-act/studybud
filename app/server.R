library(shiny)
library(magrittr)
library(MASS)
library(nlme)

# Ce fichier sert de backend à l'application
shinyServer(function(input, output, session) {
    ## Indiquer dans le dropdown tous les fichiers html contenus dans le folder flashcards/
    flash_cards_root = "../flashcards/"
    files <- list.files(path = flash_cards_root, recursive = T, pattern = "*.html")
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
            paste0(flash_cards_root, .) %>% 
            includeHTML() %>% 
            withMathJax()
        # On pourrait même mettre un mode random
        # withMathJax(includeHTML(paste0('flashcards/', input$files)))
    })
})
