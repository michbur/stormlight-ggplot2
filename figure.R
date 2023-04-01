library(ggplot2)
library(showtext)
library(Cairo)

font_add(family = "AlethiTS_lined", regular = "AlethiTS Fontv2/AlethiTS_lined.ttf")

showtext_auto()

# p <- ggplot() +
#   annotate("text", x = 1, y = 1, label = ".Journey before destination",
#            family = "AlethiTS_lined", size = 17) +
#   theme_void() +
#   theme(plot.background = element_rect(fill = NA, color = NA))

p <- ggplot(mtcars, aes(x = mpg, y = disp, color = cyl)) +
  geom_point() +
  theme_bw(base_family = "AlethiTS_lined")

CairoPS("text.ps", height = 18, width = 18, bg = "transparent")
p
dev.off()

CairoPNG("text.png", height = 480, width = 480, bg = "transparent", 
         pointsize = 10, res = 100)
p
dev.off()

CairoJPEG("text.jpeg", height = 480, width = 480, bg = "transparent", 
         pointsize = 10, res = 1800, quality = 160)
p
dev.off()

CairoTIFF("text.tiff", height = 480, width = 480, bg = "transparent", 
          pointsize = 10, res = 1800, quality = 160)
p
dev.off()
