.onAttach <- function(libname, pkgname) {
  packageStartupMessage("Custom Plotting utilities")

  my_palette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
  assign("scale_colour_discrete", function(..., values = my_palette) scale_colour_manual(..., values = values), globalenv())
  assign("scale_fill_discrete", function(..., values = my_palette) scale_fill_manual(..., values = values), globalenv())

}
