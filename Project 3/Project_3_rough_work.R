library(rvest)
library(tidyverse)

scrapped_data <- fuction(data, css_string, regex_string){
  data %>% 
    html_elements(css_string) %>% 
    html_txt() %>% 
    str_extract(regex_string)
}

url <- "https://fortune.com/education/information-technology/best-online-masters-in-data-science/"
html <- read_html(url)
school_names_html <- html_nodes(html, "fully-clickable , .card-row:nth-child(1) h2")
school_names <- html_text(school_names_html) %>% 
  str_extract( "([a-zA-Z]+\ ?){1,}")
school_names

prgram_info_html <- html_nodes(html, ".footer:nth-child(3) .col-xxs-6:nth-child(1) .value")
program_info <- prgram_info_html %>% 
  html_text() %>% 
  str_extract(".*")
program_info

program_info_fn <- html %>% 
  scrapped_data(".footer:nth-child(3) .col-xxs-6:nth-child(1) .value", ".*")
program_info_fn