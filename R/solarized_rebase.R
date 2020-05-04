#' stolen from ggthemes; not exported
#' @param light T/F switch between solarized light (gold background) or dark (navy bg)


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
