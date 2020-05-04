#' A muted, qualitative color palette
#' @import tibble
#' @import PNWColors



#' @rdname ipsum_pal
#' @export
ipsum_palette <- c("#d18975", "#8fd175", "#3f2d54", "#75b8d1", "#2d543d", "#c9d175", "#d1ab75", "#d175b8", "#758bd1") ## hrbr themes
ipsum_pal <- function() { manual_pal(ipsum_palette) }

#' @rdname starfish_pal
#' @export
starfish_palette <- c("#24492e", "#015b58" ,"#2c6184", "#59629b", "#89689d", "#ba7999" ,"#e69b99") ## pnwpal
starfish_pal <- function() { manual_pal(starfish_palette
                                        )}

#' @rdname sunset_pal
#' @export
sunset_palette <- c( "#41476b", "#675478", "#9e6374" ,"#c67b6f" ,"#de9b71" ,"#efbc82", "#fbdfa2") ## pnwpal
sunset_pal <- function() { manual_pal(sunset_palette) }

#' @examples
#' library(scales)
#' scales::show_col(sunset_pal()(9))
#' Discrete color & fill scales based on the sunset palette
#'
#' See [ipsum_pal()].
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_ipsum
#' @export
scale_colour_ipsum <- function(...) { discrete_scale("colour", "ipsum", ipsum_pal(), ...) }

#' @export
#' @rdname scale_ipsum
scale_color_ipsum <- scale_colour_ipsum

#' @export
#' @rdname scale_ipsum
scale_fill_ipsum <- function(...) { discrete_scale("fill", "ipsum", ipsum_pal(), ...) }

#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_starfish
#' @export
scale_colour_starfish <- function(...) { discrete_scale("colour", "starfish", starfish_pal(), ...) }

#' @export
#' @rdname scale_starfish
scale_color_starfish <- scale_colour_starfish

#' @export
#' @rdname scale_starfish
scale_fill_starfish <- function(...) { discrete_scale("fill", "starfish", starfish_pal(), ...) }

#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_sunset
#' @export
scale_colour_sunset <- function(...) { discrete_scale("colour", "sunset", sunset_pal(), ...) }

#' @export
#' @rdname scale_sunset
scale_color_sunset <- scale_colour_sunset

#' @export
#' @rdname scale_sunset
scale_fill_sunset <- function(...) { discrete_scale("fill", "sunset", sunset_pal(), ...) }

