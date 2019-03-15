#' Add NRS theme to a ggplot2 chart
#'
#' This function has no variables. Simply add it to a ggplot2 chain.
#' @param format The NRS theme changes slightly for different formats. Choose
#'   one of \code{"infographic"} or \code{"tweet"}.
#' @export
#' @example
#' ggplot2::ggplot(beaver1[beaver1[["day"]] == 346,], aes(time, temp)) +
#'   geom_line() +
#'   nrs_theme()

nrs_theme <- function(format = "infographic") {

  stopifnot(
    format %in% c("infographic", "tweet")
  )

  if (.Platform[["OS.type"]] == "windows") {
    windowsFonts(`Segoe UI` = windowsFont("Segoe UI"))
  }

  nrs_font <- "Segoe UI"

  ggplot2::theme(

    # Declutter
    panel.background = ggplot2::element_blank(),
    legend.position = "none",
    axis.title = ggplot2::element_blank(),
    axis.ticks = element_blank(),

    # Text
    text = element_text(family = nrs_font),
    title = element_text(size = 13),
    axis.text = element_text(size = ifelse(format == "infographic", 10, 12),
                             colour = nrs_palette[["neutral"]][["tundora"]])
  )

}



