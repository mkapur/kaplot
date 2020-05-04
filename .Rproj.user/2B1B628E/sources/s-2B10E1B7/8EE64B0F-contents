#' custom GGPLOT2 theme for insertion
#' adapted from ggthemes()
#' @export

theme_solarized_mk <- function (base_size = 12, base_family = "", light = TRUE){

  solarized_rebase <- function(light = TRUE) {
    basecolors <- deframe(ggthemes::ggthemes_data$solarized$Base)
    rebase <- if (light) {
      basecolors[c(paste0("base", 3:0), paste0("base0", 0:3))]
    } else {
      basecolors[c(paste0("base0", 3:0), paste0("base", 0:3))]
    }
    names(rebase) <- paste0("rebase", c(paste0("0", 3:0), 0:3))
    rebase
  }


  rebase <- solarized_rebase(light)
  ret <- (theme_bw(base_size = base_size, base_family = base_family) +
            theme(text = element_text(colour = rebase["rebase01"]),
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
                                                                                                                                                                                                colour = rebase["rebase01"]), panel.border = element_blank(),
                  panel.grid = element_line(color = rebase["rebase02"]),
                  panel.grid.major = element_line(color = rebase["rebase02"]),
                  panel.grid.minor = element_line(color = rebase["rebase02"]),
                  plot.background = element_rect(fill = NULL, colour = NA,
                                                 linetype = 0)))
  update_geom_defaults("point", list(colour = "grey77"))
  update_geom_defaults("boxplot", list(fill =  ifelse(light == TRUE, rebase["rebase03"],
                                                      rebase["rebase00"]),
                                       colour = ifelse(light== TRUE,"grey22","grey77")))
  ret
}
