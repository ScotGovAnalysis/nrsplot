#' Custom ggplot geoms with NRS defaults
#'
#' These geoms are normal ggplot geoms. The only difference is they specify some
#' visual properties (such as size, width, colour).
#' @export
#' @example
#' ggplot2::ggplot(beaver1[beaver1[["day"]] == 346,], aes(time, temp)) +
#'   geom_line_nrs() +
#'   nrs_theme()

geom_line_nrs <- function(...) {

  geom_line(..., size = 1.4)

}

#' @export
#' @rdname geom_line_nrs
geom_col_nrs <- function(...) {
  geom_col(..., width = 0.7, size = 1.5, colour = "white")
}

#' @export
#' @rdname geom_line_nrs
geom_text_nrs <- function(...) {
  geom_text(..., size = 3.5)
}

#' @export
#' @rdname geom_line_nrs
geom_point_nrs <- function(...) {
  geom_point(..., shape = 21, size = 2, stroke = 0.5)
}
