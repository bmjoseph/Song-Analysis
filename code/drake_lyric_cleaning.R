#==================================================================
# This script cleans drake song lyrics
# Songs were downloaded in drake_song_downloads.R
# Requires the same file structure as is on my computer 
# (Alternatively change the file paths to match yours) 
# Author: Bailey Joseph
# Date: 2017-12-20
#==================================================================

#==================================================================
# Load Required Packages and files
#==================================================================

library(stringr)
library(rvest)

#==================================================================
# Take Care
#==================================================================

# Not including Kendrick's Interlude 

tc_names <- c("Over_my_Dead_Body",
              "Shot_for_Me",
              "Headlines",
              "Crew_Love",
              "Take_Care",
              "Marvins_Room",
              "Underground_Kings",
              "Make_me_Proud",
              "Lord_Knows",
              "Cameras_Interlude",
              "Doing_it_Wrong",
              "The_Real_Her",
              "Look_What_You've_Done",
              "HYFR",
              "Practice",
              "The_Ride")

## -------- Read in the lyrics from data folder -------- ##

# Initialize an empty vector to be filled with lyrics
tc_song_lyrics <- (rep(NA, length(tc_names)))

# Extract the lyrics from the data folder:
for (i in 1:length(tc_names)) {
  tc_song_lyrics[i] <- (
    paste0("../data/drake/tc/", tolower(tc_names[i])) %>%
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

for (i in 1:length(tc_song_lyrics)) {
  # First change everything to lowercase
  tc_song_lyrics[[i]] <- tolower(tc_song_lyrics[[i]])
  
  # Next remove any double quotations inside words
  tc_song_lyrics[[i]] <-
    str_replace_all(tc_song_lyrics[[i]], "\"", "")
  
  # Finally use gsub to remove the \ characters
  tc_song_lyrics[[i]] <-
    (gsub("\\", "", tc_song_lyrics[[i]], fixed = TRUE))
}


## -------- Remove words that shouldn't be there -------- ##

# Remove some keywords that should not be counted as lyrics in my opinion
for (i in 1:length(tc_song_lyrics)) {
  tc_song_lyrics[[i]] <-
    tc_song_lyrics[[i]][tc_song_lyrics[[i]] != "" &
                        tc_song_lyrics[[i]] != "i"]
}


#==================================================================
# Nothing Was The Same
#==================================================================


nwts_names <- c("Tuscan_Leather",
                "Furthest_Thing",
                "Started_from_the_Bottom",
                "Wu_Tang_Forever",
                "Own_It",
                "Worst_Behavior",
                "From_Time",
                "Hold_on_We're_Going_Home",
                "Connect",
                "The_Language",
                "305_to_my_City",
                "Too_Much",
                "Pound_Cake")

## -------- Read in the lyrics from data folder -------- ##

# Initialize an empty vector to be filled with lyrics
nwts_song_lyrics <- (rep(NA, length(nwts_names)))

# Extract the lyrics from the data folder:
for (i in 1:length(nwts_names)) {
  nwts_song_lyrics[i] <- (
    paste0("../data/drake/nwts/", tolower(nwts_names[i])) %>%
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

for (i in 1:length(nwts_song_lyrics)) {
  # First change everything to lowercase
  nwts_song_lyrics[[i]] <- tolower(nwts_song_lyrics[[i]])
  
  # Next remove any double quotations inside words
  nwts_song_lyrics[[i]] <-
    str_replace_all(nwts_song_lyrics[[i]], "\"", "")
  
  # Finally use gsub to remove the \ characters
  nwts_song_lyrics[[i]] <-
    (gsub("\\", "", nwts_song_lyrics[[i]], fixed = TRUE))
}


## -------- Remove words that shouldn't be there -------- ##

# Remove some keywords that should not be counted as lyrics in my opinion
for (i in 1:length(nwts_song_lyrics)) {
  nwts_song_lyrics[[i]] <-
    nwts_song_lyrics[[i]][nwts_song_lyrics[[i]] != "" &
                          nwts_song_lyrics[[i]] != "i"]
}

#==================================================================
# If You're Reading This It's Too Late
#==================================================================


iyritl_names <- c("Legend",
                  "Energy",
                  "10_Bands",
                  "Know_Yourself",
                  "No_Tellin",
                  "Madonna",
                  "6_God",
                  "Preach",
                  "Used_To",
                  "6_Man",
                  "Now_and_Forever",
                  "Company",
                  "You_and_the_6",
                  "Jungle",
                  "6pm_in_New_York")

## -------- Read in the lyrics from data folder -------- ##

# Initialize an empty vector to be filled with lyrics
iyritl_song_lyrics <- (rep(NA, length(iyritl_names)))

# Extract the lyrics from the data folder:
for (i in 1:length(iyritl_names)) {
  iyritl_song_lyrics[i] <- (
    paste0("../data/drake/iyritl/", tolower(iyritl_names[i])) %>%
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

for (i in 1:length(iyritl_song_lyrics)) {
  # First change everything to lowercase
  iyritl_song_lyrics[[i]] <- tolower(iyritl_song_lyrics[[i]])
  
  # Next remove any double quotations inside words
  iyritl_song_lyrics[[i]] <-
    str_replace_all(iyritl_song_lyrics[[i]], "\"", "")
  
  # Finally use gsub to remove the \ characters
  iyritl_song_lyrics[[i]] <-
    (gsub("\\", "", iyritl_song_lyrics[[i]], fixed = TRUE))
}


## -------- Remove words that shouldn't be there -------- ##

# Remove some keywords that should not be counted as lyrics in my opinion
for (i in 1:length(iyritl_song_lyrics)) {
  iyritl_song_lyrics[[i]] <-
    iyritl_song_lyrics[[i]][iyritl_song_lyrics[[i]] != "" &
                            iyritl_song_lyrics[[i]] != "i"]
}


#==================================================================
# Views
#==================================================================


views_names <- c("Keep_the_Family_Close",
                 "9",
                 "U_With_Me",
                 "Feel_No_Ways",
                 "Hype",
                 "Weston_Road_Flows",
                 "Redemption",
                 "With_You",
                 "Faithful",
                 "Still_Here",
                 "Controlla",
                 "One_Dance",
                 "Grammys",
                 "Child's_Play",
                 "Pop_Style",
                 "Too_Good",
                 "Summer's_Over_Interlude",
                 "Fire_and_Desire",
                 "Views",
                 "Hotline_Bling")

## -------- Read in the lyrics from data folder -------- ##

# Initialize an empty vector to be filled with lyrics
views_song_lyrics <- (rep(NA, length(views_names)))

# Extract the lyrics from the data folder:
for (i in 1:length(views_names)) {
  views_song_lyrics[i] <- (
    paste0("../data/drake/views/", views_names[i]) %>%
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

for (i in 1:length(views_song_lyrics)) {
  # First change everything to lowercase
  views_song_lyrics[[i]] <- tolower(views_song_lyrics[[i]])
  
  # Next remove any double quotations inside words
  views_song_lyrics[[i]] <-
    str_replace_all(views_song_lyrics[[i]], "\"", "")
  
  # Finally use gsub to remove the \ characters
  views_song_lyrics[[i]] <-
    (gsub("\\", "", views_song_lyrics[[i]], fixed = TRUE))
}


## -------- Remove words that shouldn't be there -------- ##

# Remove some keywords that should not be counted as lyrics in my opinion
for (i in 1:length(views_song_lyrics)) {
  views_song_lyrics[[i]] <-
    views_song_lyrics[[i]][views_song_lyrics[[i]] != "" &
                              views_song_lyrics[[i]] != "i"]
}

#==================================================================
# More Life
#==================================================================


ml_names <- c("Free_Smoke",
              "No_Long_Talk",
              "Passionfruit",
              "Jorja_Interlude",
              "Get_it_Together",
              "Madiba_Riddim",
              "Blem",
              "Gyalchester",
              "Portland",
              "Sacrifices",
              "Nothings_into_Somethings",
              "Teenage_Fever",
              "KMT",
              "Lose_You",
              "Can't_Have_Everything",
              "Glow",
              "Since_Way_Back",
              "Fake_Love",
              "Ice_Melts",
              "Do_Not_Disturb")

## -------- Read in the lyrics from data folder -------- ##

# Initialize an empty vector to be filled with lyrics
ml_song_lyrics <- (rep(NA, length(ml_names)))

# Extract the lyrics from the data folder:
for (i in 1:length(ml_names)) {
  ml_song_lyrics[i] <- (
    paste0("../data/drake/ml/", ml_names[i]) %>%
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

for (i in 1:length(ml_song_lyrics)) {
  # First change everything to lowercase
  ml_song_lyrics[[i]] <- tolower(ml_song_lyrics[[i]])
  
  # Next remove any double quotations inside words
  ml_song_lyrics[[i]] <-
    str_replace_all(ml_song_lyrics[[i]], "\"", "")
  
  # Finally use gsub to remove the \ characters
  ml_song_lyrics[[i]] <-
    (gsub("\\", "", ml_song_lyrics[[i]], fixed = TRUE))
}


## -------- Remove words that shouldn't be there -------- ##

# Remove some keywords that should not be counted as lyrics in my opinion
for (i in 1:length(ml_song_lyrics)) {
  ml_song_lyrics[[i]] <-
    ml_song_lyrics[[i]][ml_song_lyrics[[i]] != "" &
                             ml_song_lyrics[[i]] != "i"]
}


#==================================================================
# All Songs Together
#==================================================================

all_drake_song_names <- c(tc_names,
                       nwts_names,
                       iyritl_names,
                       views_names,
                       ml_names)

all_drake_song_lyrics <- c(tc_song_lyrics,
                        nwts_song_lyrics,
                        iyritl_song_lyrics,
                        views_song_lyrics,
                        ml_song_lyrics)
names(all_drake_song_lyrics) <- all_drake_song_names












