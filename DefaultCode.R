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

#1) Do this whenever you need to start a session#
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


# 2) Get access to Twitter#

#Generate the Access Tokens from Twitter Developer Accounts

accessToken ="921221184905084929-CNar8k2f5HN0sFiDRNB4hyy3litixUE"

accessSecret = "WE8NJsRKkHCp3sB03sRtsHaCALDn64pracvBf5KjDTSQ5"

consumerKey = "K7kLU6QVaIzPOs1FLehuaXL9a"

consumerSecret = "uAQiU2kgfWkF9cQ62QVNiJ74oO1vs6j7CIKrAbj1MRHnJmr8pP"

#CALL FOR THE TOKENs

options(httr_oauth_cache=TRUE)
setup_twitter_oauth(consumer_key = consumerKey, consumer_secret = consumerSecret,
                    access_token = accessToken, access_secret = accessSecret)

#3.1) Scrape a user's tweets
#Name Of UserNAme=Former President Barack Obama
#Timeline Name :@potus44




obamatweets<- userTimeline("potus44", n = 3200)

obamatweets_df <- tbl_df(map_df(obamatweets, as.data.frame))

write.csv(obamatweets_df, "obamatweets.csv")

#3.2) Search for a hashtag
yeswecan <- searchTwitter("#yeswecan exclude:retweets", n=3200)

yeswecan_df <- tbl_df(map_df(yeswecan, as.data.frame))

write.csv(yeswecan_df, "yeswecan.csv")

#3.3) Search for all tweets directed to a user
tweetstoobama <- searchTwitter("@potus44 exclude:retweets", n=3200)

tweetstoobama_df <- tbl_df(map_df(tweetstoobama, as.data.frame))

write.csv(futureexwife_df, "tweetstoobama.csv")


