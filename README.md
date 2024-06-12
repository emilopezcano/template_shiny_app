# template_shiny_app

Project template for a shiny app

## How to use the template

- Change the package name in DESCRIPTION in order to comply with standards.
Not underscores allowed

- You need, at least, the following packages for developing an app with this template (not to run the app):
  + roxygen2
  + testthat
  + pkgdown

## Template structure

- Typical R package structure (DESCRIPTION file, R folder)

- R functions

- Translation folder (if multilanguage)

## My development workflow

- Use functions for rendering outputs and even for producing ui elements.

- Go to the terminal tab and run: `Rscript -e 'devtools::load_all();app_run()'`

- Stop and rerun in the terminal.
