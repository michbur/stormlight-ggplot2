library(dplyr)

all_lines <- readLines("https://raw.githubusercontent.com/Ning1253/StormlightBlush/main/README.md")

all_lines[grepl(pattern = "### {", x = all_lines, fixed = TRUE)] %>% 
  strsplit(split = "} -> {", fixed = TRUE) %>% 
  sapply(first) %>% 
  gsub(x = ., pattern = "### {", replacement = "", fixed = TRUE) %>% 
  table() %>% 
  data.frame() %>% 
  setNames(c("char", "blushes")) %>% 
  write.csv("stormlight-blushes.csv", row.names = FALSE)
