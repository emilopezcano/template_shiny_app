app_ui <- function(request){
  page_sidebar(
    window_title = "dash",
    title = "My dashboard",
    theme = mytheme(),
    sidebar = "Sidebar",
    "Main content area"
  )
}
