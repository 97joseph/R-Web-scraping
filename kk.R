library(rvest)

# Store web url
lego_movie <- html("http://www.imdb.com/title/tt1490017/")

#Scrape the website for the movie rating
rating <- lego_movie %>% 
  html_nodes("strong span") %>%
  html_text() %>%
  as.numeric()
rating

# Scrape the website for the cast
cast <- lego_movie %>%
  html_nodes("#titleCast .itemprop span") %>%
  html_text()
cast

#Scrape the website for the url of the movie poster
poster <- lego_movie %>%
  html_nodes("#img_primary img") %>%
  html_attr("src")
poster
