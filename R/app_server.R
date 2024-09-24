
app_server <- function(input, output, session) {
  # Uncomment to include a theme selector
  # bs_themer() 
  i18n <- getOption("template.translator")
  i18n$set_translation_language("es")
  
  
  
  i18n_r <- reactive({
    i18n
  })
  
  observeEvent(input$slang, {
    shiny.i18n::update_lang(input$slang)
    i18n_r()$set_translation_language(input$slang)
  })
  
  output$welcome <- renderUI({
    
    bg <- switch(input$slang, 
                 "en" = "white",
                 "es" = "yellow")
    
    div(style = paste("padding: 10px; border-radius: 10px; background:", bg), h3(i18n$t("Welcome")))
  }) 
  
  
  output$p <- renderPlot({
    ggplot(penguins) +
      geom_histogram(aes(!!input$var), bins = input$bins) +
      theme_bw(base_size = 20)
  })
}