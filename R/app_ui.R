app_ui <- function(request){
  i18n <- getOption("template.translator")
  i18n$set_translation_language("es")
  page_navbar(
    window_title = "dash",
    title = i18n$t("My dashboard"),
    theme = mytheme(),
    inverse = TRUE,
    sidebar = sidebar(title = "Selections", 
                      position = "left",
                      img(src = "www/emilio4.png", width = "100px"),
                      radioButtons(
                        inputId = "slang",
                        label = "Select language",
                        inline = TRUE,
                        choices = i18n$get_languages()
                      ),
                      # UI that we'll translate on the server size
                      uiOutput("welcome")),
    nav_panel(title = "Overview",
              layout_sidebar(sidebar = sidebar(position = "right",
                                               myvbs()[1],
                                               myvbs()[2],
                                               myvbs()[3]),
                             layout_columns(fill = FALSE,
                                            col_widths = c(6,6),
                                            card("map"),
                                            card("plot")
                             )
              ),
    ),
    nav_panel(title = "Section 1",
              "Content of second section",
              layout_columns(myvbs()[1], myvbs()[2], myvbs()[3]))
    
  )
}
