#' Run shiny application
#'
#' @port port number
#'
#' @return
#'
#' @import shiny
#' @import bslib
#' @import bsicons
#' 
#' @export
#'
#' @examples
app_run <- function(port = 3838){
  shiny::shinyApp(app_ui(), 
                  app_server, 
                  options = list(port = port))
}