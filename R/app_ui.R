app_ui <- function(request){
  page_navbar(
    window_title = "dash",
    title = "My dashboard",
    theme = mytheme(),
    inverse = TRUE,
    sidebar = sidebar(title = "Selections", 
                      position = "left"),
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
