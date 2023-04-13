library(ggplot2)
library(showtext)
library(Cairo)

font_add(family = "AlethiTS_lined", regular = "AlethiTS Fontv2/AlethiTS_lined.ttf")

showtext_auto()

dat <- read.csv("stormlight-blushes.csv")

p <- ggplot(dat, aes(x = char, y = blushes)) +
  geom_col() +
  scale_x_discrete("Character") +
  scale_y_continuous("Number of blushes") +
  coord_flip() +
  theme_bw() +
  theme(legend.position = "bottom",
        axis.title = element_text(family = "AlethiTS_lined"),
        axis.text.y = element_text(family = "AlethiTS_lined", size = 3))

CairoPS("text.ps", height = 6, width = 6, bg = "transparent")
p
dev.off()

CairoPNG("text.png", height = 480, width = 480, bg = "transparent", 
         pointsize = 10, res = 100)
p
dev.off()
