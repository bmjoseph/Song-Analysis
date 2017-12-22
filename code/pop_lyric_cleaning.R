#==================================================================
# This script cleans pop song lyrics
# Most songs were downloaded in song_downloads.R, but some are manually added
# Requires the same file structure as is on my computer 
# (Alternatively change the file paths to match yours) 
# Author: Bailey Joseph
# Date: 2017-12-18
#==================================================================

#==================================================================
# Load Required Packages and files
#==================================================================

library(stringr)
library(rvest)

#==================================================================
# Katy Perry
#==================================================================

kp_names <- c("roar",
              "legendary_lovers",
              "birthday",
              "unconditionally",
              "dark_horse",
              "this_is_how_we_do",
              "international_smile",
              "ghost",
              "love_me",
              "this_moment")

## -------- Read in the lyrics from data folder -------- ##

# Initialize an empty vector to be filled with lyrics
kp_song_lyrics <- (rep(NA, length(kp_names)))

# Extract the lyrics from the data folder:
for (i in 1:length(kp_names)) {
  kp_song_lyrics[i] <- (
    paste0("../data/katy_perry/", kp_names[i]) %>%
      read_html() %>%
      html_nodes("#lyrics") %>%
      html_text() %>%
      # Next we'll replace new lines and dashes with spaces
      str_replace_all(pattern = "[\n-]",
                      replacement = " ") %>%
      # Next we'll replace periods, commas, !, ?, and  parentheses with ""
      str_replace_all(pattern = "[\\.,!/?():]",
                      replacement = "") %>%
      str_split(pattern = " ")
  )
}

# Do some additional preprocessing

for (i in 1:length(kp_song_lyrics)) {
  # First change everything to lowercase
  kp_song_lyrics[[i]] <- tolower(kp_song_lyrics[[i]])
  
  # Next remove any double quotations inside words
  kp_song_lyrics[[i]] <-
    str_replace_all(kp_song_lyrics[[i]], "\"", "")
  
  # Finally use gsub to remove the \ characters
  kp_song_lyrics[[i]] <-
    (gsub("\\", "", kp_song_lyrics[[i]], fixed = TRUE))
}


## -------- Remove words that shouldn't be there -------- ##

# Remove some keywords that should not be counted as lyrics in my opinion
for (i in 1:length(kp_song_lyrics)) {
   kp_song_lyrics[[i]] <-
    kp_song_lyrics[[i]][kp_song_lyrics[[i]] != "la" &
                           kp_song_lyrics[[i]] != "mmm" &
                           kp_song_lyrics[[i]] != "" &
                           kp_song_lyrics[[i]] != "i"]
}

#==================================================================
# Top Pop Charts
#==================================================================

top_pop_names <- c("Havana",
                   "Thunder",
                   "What_Lovers_Do",
                   "Bad_at_Love",
                   "Perfect",
                   "Side_to_Side",
                   "Don't_Wanna_Know",
                   "Scars_to_Your_Beautiful",
                   "Closer",
                   "Starboy",
                   "Sorry",
                   "Hello",
                   "Same_Old_Love",
                   "Here",
                   "On_my_Mind",
                   "Animals",
                   "Don't",
                   "Blame",
                   "Jealous",
                   "Waves",
                   "The_Monster",
                   "Demons",
                   "Counting_Stars",
                   "Wake_me_Up",
                   "Wrecking_Ball")

# Initialize an empty vector to be filled with lyrics
top_pop_song_lyrics <- (rep(NA, length(top_pop_names)))

# Extract the lyrics from the data folder:
for (i in 1:length(top_pop_names)) {
  top_pop_song_lyrics[i] <- (
    paste0("../data/pop_charts/", top_pop_names[i]) %>%
      read_html() %>%
      html_nodes("#lyrics") %>%
      html_text() %>%
      # Next we'll replace new lines and dashes with spaces
      str_replace_all(pattern = "[\n-]",
                      replacement = " ") %>%
      # Next we'll replace periods, commas, !, ?, and  parentheses with ""
      str_replace_all(pattern = "[\\.,!/?():]",
                      replacement = "") %>%
      str_split(pattern = " ")
  )
}

# Do some additional preprocessing

for (i in 1:length(top_pop_song_lyrics)) {
  # First change everything to lowercase
  top_pop_song_lyrics[[i]] <- tolower(top_pop_song_lyrics[[i]])
  
  # Next remove any double quotations inside words
  top_pop_song_lyrics[[i]] <-
    str_replace_all(top_pop_song_lyrics[[i]], "\"", "")
  
  # Finally use gsub to remove the \ characters
  top_pop_song_lyrics[[i]] <-
    (gsub("\\", "", top_pop_song_lyrics[[i]], fixed = TRUE))
}

## -------- Remove words that shouldn't be there -------- ##

# Remove some keywords that should not be counted as lyrics in my opinion
for (i in 1:length(top_pop_song_lyrics)) {
  top_pop_song_lyrics[[i]] <-
    top_pop_song_lyrics[[i]][top_pop_song_lyrics[[i]] != "la" &
                          top_pop_song_lyrics[[i]] != "mmm" &
                          top_pop_song_lyrics[[i]] != "" &
                          top_pop_song_lyrics[[i]] != "i"]
}

names(top_pop_song_lyrics) <- top_pop_names
