library(ggplot2)
library(showtext)
font_add(family = "AlethiTS_lined", regular = "AlethiTS Fontv2/AlethiTS_lined.ttf")


cairo_ps("text.eps", height = 4, width = 4)
showtext_begin()
ggplot() +
  annotate("text", x = 1, y = 1, label = "Journey before destination",
           family = "AlethiTS_lined") +
  theme_void()
showtext_end()
dev.off()
