#PART 8.2

#Call for installation of required libraries

#install.packages("lubridate")
#install.packages("scales")
#install.packages("broom")
#install.packages("ggplot2")
#install.packages("stringr")
#install.packages("twitteR")
#install.packages("purrr")
#install.packages("tidytext")
#install.packages("dplyr")
#install.packages("tidyr")
#install.packages("rtweet")

#Instantiate the libraries

library(dplyr)
library(tidyr)
library(lubridate)
library(scales)
library(broom)
library(ggplot2)
library(stringr)
library(twitteR)
library(purrr)
library(tidytext)
library(rtweet)


# 2) Get access to Twitter#

#Generate the Access Tokens from Twitter Developer Accounts


#CALL FOR THE TOKENs

accessToken ="921221184905084929-CNar8k2f5HN0sFiDRNB4hyy3litixUE"

accessSecret = "WE8NJsRKkHCp3sB03sRtsHaCALDn64pracvBf5KjDTSQ5"

consumerKey = "K7kLU6QVaIzPOs1FLehuaXL9a"

consumerSecret = "uAQiU2kgfWkF9cQ62QVNiJ74oO1vs6j7CIKrAbj1MRHnJmr8pP"


token <- create_token(
  app = "ScrapperRJ",
  consumer_key = consumerKey,
  consumer_secret = consumerSecret,
  access_token = accessToken,
  access_secret = accessSecret)

options(httr_oauth_cache=TRUE)
setup_twitter_oauth(consumer_key = consumerKey, consumer_secret = consumerSecret,
                    access_token = accessToken, access_secret = accessSecret)

#3.1) Scrape a user's tweets
#Name Of UserNAme=Former President Barack Obama
#Timeline Name :@potus44

#Section 8.1
#tweets <- search_tweets(q = "POTUS44", n = 1000)
tweets<- search_tweets(q = "@potus44", n = 1000)
tweets

#Display the tweet Data
View(tweets)



# Saving on object in RData format
save(tweets, file = "data.RData")

# To load the data again
load("data.RData")






