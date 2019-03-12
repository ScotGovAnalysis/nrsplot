#' Add NRS theme to a ggplot2 chart
#'
#' This function has no variables. Simply add it to a ggplot2 chain.
#' @export
#' @example
#' ggplot2::ggplot(beaver1[beaver1[["day"]] == 346,], aes(time, temp)) +
#'   geom_line() +
#'   nrs_theme()

nrs_theme <- function() {

  if (.Platform[["OS.type"]] == "windows") {
    windowsFonts(`Segoe UI` = windowsFont(`Segoe UI`))
  }

  nrs_font <- "Segoe UI"

  ggplot2::theme(
    text = element_text(family = nrs_font)
  )

}



