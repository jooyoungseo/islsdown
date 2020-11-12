#' @section \code{isls_pdf}: Format for creating the ISLS Annual Meeting
#' articles. Adapted from
#'   \url{https://xxx}.
#' @export

isls_pdf <- function(..., pandoc_args = NULL) {

  isls_pdf_format <- bookdown::pdf_book(..., number_sections = FALSE, template = find_resource("isls_article", "template.tex"), keep_tex = TRUE, pandoc_args = c(
    "--metadata", "citeproc=false",
    rmdfiltr::add_wordcount_filter(rmdfiltr::add_replace_ampersands_filter(rmdfiltr::add_citeproc_filter(args = NULL))),
    pandoc_args
  ))

  # opts_isls_pdf = list(
  #    prompt = TRUE, comment = NA, R.options = list(prompt = 'R> ', continue = 'R+ '),
  #    fig.align = 'center', fig.width = 4.9, fig.height = 3.675,
  #    class.source = 'r-chunk-code'
  #  )
  #  for (i in names(opts_isls_pdf)) {
  # isls_pdf_format$knitr$opts_chunk[[i]] = opts_isls_pdf[[i]]
  # }

  isls_pdf_format
}

#' @section \code{isls_word}: Format for creating the ISLS Annual Meeting
#' articles. Adapted from
#'   \url{https://xxx}.
#' @export

isls_word <- function(..., pandoc_args = NULL) {
  isls_word_format <- bookdown::word_document2(..., number_sections = FALSE, reference_docx = find_resource("isls_article", "template.docx"), pandoc_args = c(
    "--metadata", "citeproc=false",
    rmdfiltr::add_wordcount_filter(rmdfiltr::add_replace_ampersands_filter(rmdfiltr::add_citeproc_filter(args = NULL))),
    pandoc_args
  ))

  # opts_isls_word = list(
  #    prompt = TRUE, comment = NA, R.options = list(prompt = 'R> ', continue = 'R+ '),
  #    fig.align = 'center', fig.width = 4.9, fig.height = 3.675,
  #    class.source = 'r-chunk-code'
  #  )
  #  for (i in names(opts_isls_word)) {
  # isls_word_format$knitr$opts_chunk[[i]] = opts_isls_word[[i]]
  # }

  isls_word_format
}
