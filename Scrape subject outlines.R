
library(rvest)
library(tidyverse)

#####################################################

#create function to 
url <- function(subject_code){
    paste0("http://handbook.uts.edu.au/subjects/details/", subject_code, ".html") 
}

urls <- url(c(36100, 36103, 36106, 36102, 36104, 36101, 36109, 36105))

titles <- urls %>% 
    map(read_html) %>% 
    map(html_node,"h1") %>% 
    map_chr(html_text)




xmls <- as.data.frame(titles)




body <- urls %>%
    map(read_html) %>%
    map(html_node, '#content') %>%
    map_chr(html_text)


body <- as.data.frame(body)
body[1]


############################################

course_text <- html_text(course_data)
head(course_text)
course_text <- course_text[72:99]

############################################