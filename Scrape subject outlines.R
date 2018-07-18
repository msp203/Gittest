
library(rvest)
library(tidyverse)

#####################################################

#create function to 
url <- function(subject_code){
    paste0("http://handbook.uts.edu.au/subjects/", subject_code, ".html") 
}

urls <- url(c(36100, 36103, 36106, 36102, 36104, 36101, 36109, 36105))

xmls <- urls %>% 
    map(read_html) #%>% 
    #map(html_node, ".store-details__address") %>% 
    #map_chr(html_text)#

map(html_node()



course_data <- html_nodes(webpage, 'a')

course_text <- html_text(course_data)
head(course_text)
course_text <- course_text[72:99]
