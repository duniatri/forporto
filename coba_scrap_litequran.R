#load library
library(tidyverse)
library(ralger)

#ambil semua link surah dari url litequran
site = "https://litequran.net/"
nodenama = "a"
nama = scrap(link = site, node = nodenama)
nama2 = gsub("-|\\s+|^$","-",nama)
nama2 = gsub("'", '', nama2) %>% tolower()
url = paste0('https://litequran.net/',c(nama2[2:7]),sep='')

#scrap arti - ternyata gak dibolehin di-scrap!

    tidy_scrap(
      link = url, 
      nodes = c(
        ".ayat",
        ".bacaan",
        ".arti"
      ), 
      colnames = c("ayat", "bacaan", "arti"),
      askRobot = TRUE
    )
  