.onLoad <- function(libname, pkgname) {
  resources <- system.file("app/www", package = "template.shiny.app")
  addResourcePath("www", resources)
  
  op <- options()
  op.template <- list(
    template.app_title = "My Dashboard",
    template.signif = 2,
    template.translator = suppressWarnings(
      shiny.i18n::Translator$new(translation_csvs_path = 'inst/app/translations/')
      # Warning message:
      #   In load_local_config(translation_csv_config) :
      #   You didn't specify config translation yaml file. Default settings are used.
    )
  )
  toset <- !(names(op.template) %in% names(op))
  if (any(toset)) options(op.template[toset])
  
  # lang <- Sys.getenv("DEFAULT_LANGUAGE", unset = "es")
  # i18n$set_translation_language(lang)
  
  invisible()
  
}