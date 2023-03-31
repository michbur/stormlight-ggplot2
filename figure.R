library(ggplot2)
library(showtext)
library(Cairo)

font_add(family = "AlethiTS_lined", regular = "AlethiTS Fontv2/AlethiTS_lined.ttf")

p <- ggplot() +
  annotate("text", x = 1, y = 1, label = ".Journey before destination",
           family = "AlethiTS_lined", size = 17) +
  theme_void() +
  theme(plot.background = element_rect(fill = NA, color = NA))

CairoPS("text.ps", height = 18, width = 18, bg = "transparent")
showtext_begin()
p
showtext_end()
dev.off()

CairoPNG("text.png", height = 480*3, width = 480*3, bg = "transparent", 
         pointsize = 10, res = 800)
showtext_begin()
p
showtext_end()
dev.off()

CairoJPEG("text.jpeg", height = 480*3, width = 480*3, bg = "transparent", 
         pointsize = 10, res = 1800, quality = 160)
showtext_begin()
p
showtext_end()
dev.off()

CairoTIFF("text.tiff", height = 480*3, width = 480*3, bg = "transparent", 
          pointsize = 10, res = 1800, quality = 160)
showtext_begin()
p
showtext_end()
dev.off()
