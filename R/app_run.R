#' Run shiny application
#'
#' @return
#'
#' @import shiny
#' @import bslib
#' 
#' @export
#'
#' @examples
app_run <- function(){
  app_global()
  shiny::shinyApp(app_ui(), app_server)
}