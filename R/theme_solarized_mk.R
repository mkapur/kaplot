#' Adapted from ggthemes
#' @param base_size as in original
#' @param base_family fonts
#' @param light T/F switch between solarized light (gold background) or dark (navy bg)
#' @export

theme_solarized_mk <- function (base_size = 12, base_family = "", light = TRUE){

  rebase <- solarized_rebase(light)

  ret <- (theme_bw(base_size = base_size, base_family = base_family) +
            theme(text = element_text(colour = "#cfcac1"),
                  title = element_text(color = rebase["rebase0"]),
                  line = element_line(color = rebase["rebase01"]),
                  rect = element_rect(fill = rebase["rebase03"], color = rebase["rebase01"]),
                  axis.ticks = element_line(color = rebase["rebase01"]),
                  axis.line = element_line(color = rebase["rebase01"],
                                           linetype = 1),
                  legend.position = 'bottom',
                  legend.background = element_rect(fill = rebase["rebase03"],
                                                   color = NA),
                  legend.key = element_rect(fill =  rebase["rebase03"],
                                            colour = NULL, linetype = 0),
                  panel.background = element_rect(fill = rebase["rebase03"],
                                                  colour = rebase["rebase01"]),
                  panel.border = element_blank(),
                  panel.grid = element_blank(),
                  plot.background = element_rect(fill = NULL, colour = NA,
                                                 linetype = 0)))

  update_geom_defaults("point", list(colour = "grey77"))

  update_geom_defaults("boxplot", list(fill =  ifelse(light == TRUE, rebase["rebase03"],
                                                      rebase["rebase00"]),
                                       colour = ifelse(light== TRUE,"grey22","grey77")))
  ret
}
