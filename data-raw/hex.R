#install.packages("hexSticker")
library(hexSticker)
library(ggplot2)
pkg <- basename(getwd())
img <- "data-raw/hexsubplot.png" # add custom subplot here
out <- paste0(c("data-raw/", "inst/"), pkg, ".png")

hex_plot <- function(out, mult = 1){
  sticker(img, 1, 1, 0.9, 1, "", h_size = mult * 1.2, h_fill = "black",
          h_color = "gray", url = paste0("ropensci.github.io/", pkg), u_color = "white", u_size = mult * 3,
          filename = out)
  # overwrite file for larger size
  if(mult != 1) ggsave(out, width = mult*43.9, height = mult*50.8, bg = "transparent", units = "mm")
}

hex_plot(out[1], 4) # multiplier for larger sticker size
#hex_plot(out[2])
