# PePo_05_01_TwitteR
# app to retrieve twitter data for R
# lynda.com >> Data Science Tips, episode May 02, 2016
# PePo 2016_0505

# INSTALL & LOAD PACKAGES #############################

install.packages("twitteR")
require (twitteR)

# SETUP TWITTER APP, GET KEYS & TOKENS ####################

# 1. create a "Twitter app" at https://apps.twitter.com/
# 2. get keys and access tokens
# 3. paste below

consumerKey <-  
  "GkQTZ83c5wkCpVMpd8ZjAg9ov"
consumerSecret <- 
  "aNV1ImtvXp4huzqIVooXxgqNS44ouTmTRSXpABfzAjQ8zB1Ury"
accessToken <-
  "6751102-98wmb89kI7XI6UqoU2ERMJqmbzbPxwafemhejaj0VV"
accessTokenSecret <-
  "8FXqvREHPMybCyoqcsLvnY8mjoiJ6jWSq1gvmMFeqVsJA"

setup_twitter_oauth(consumerKey, consumerSecret,
                    accessToken, accessTokenSecret)

# SEARCH AND SHOW RESULTS #################################

# lynda.com: searchTerm <- '#data4good'
#searchTerm <- '#data4good'
#searchTerm <- '#pepo'
#searchTerm <- '#PacktPub'
#searchTerm <- '#bitsoffreedom'
searchTerm <- 'AdobeEdu'
#searchTerm <- 'scottwambler'
nTweets <- 100

# perform search and save result in list
tweets <- searchTwitter(searchTerm, n = nTweets)
head(tweets)  # first few entries in the list

# convert list of tweets to dataframe
tweets.df <- do.call(rbind, lapply(tweets, as.data.frame))
head(tweets.df) # show top of dataframe in console

# show just the text of the first h=few tweets
head(tweets.df$text)

# save the first 50 characters of each tweet to new object
tText <- substr(tweets.df$text, start = 1, stop = 50)
tText # show text

# CLEAN UP ####################################################

# Clear workspace
rm(list = ls())

# Clear console
cat("\014") #ctrl+L
