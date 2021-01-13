#' Output formats for Uabjo Facultad de Economia
#'
#' Each function is a wrapper for \code{\link[bookdown]{pdf_document2}} to
#' produce documents in Monash EBS style.
#'
#' @param \dots Arguments passed to \code{\link[bookdown]{pdf_document2}}.
#'
#' @return An R Markdown output format object.
#'
#' @author Rob J Hyndman
#' @author Alonso Melgar
#'
#' @export
basicreport <- function(...) {
  template <- system.file("rmarkdown/templates/basic_report/resources/uabjobasicreport.tex",
                          package="UabjoFEconomiaTemplates")
  bookdown::pdf_document2(...,
                          template = template
  )
}

#' @export
report <- function(...) {
  template <- system.file("rmarkdown/templates/report/resources/uabjoreport.tex",
                          package="UabjoFEconomiaTemplates")
  bookdown::pdf_document2(...,
                          template = template
  )
}
