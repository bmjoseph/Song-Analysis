#==================================================================
# This script cleans Taylor Swift song lyrics
# Most songs were downloaded in song_downloads.R, but some are manually added
# Requires the same file structure as is on my computer 
# (Alternatively change the file paths to match yours) 
# Author: Bailey Joseph
# Date: 2017-17-12
#==================================================================

#==================================================================
# Load Required Package
#==================================================================

library(stringr)
library(rvest)



#==================================================================
# TS 1
#==================================================================

# Picture to Burn, Tied Together with a Smile, A Perfectly Good Heart, and
# Invisible are all missing from the list. For the sake of completion,
# Their lyrics were manually entered below. This is unfortunately messy.

ts1_names <- c("Tim McGraw",
               "Teardrops on My Guitar",
               "A Place in This World",
               "Cold as You",
               "The Outside",
               "Stay Beautiful",
               "Should've Said No",
               "Mary's Song",
               "Our Song",
               "I'm Only Me When I'm With You")

ts1_names <- str_replace_all(ts1_names, pattern = " ", replacement = "_")

## -------- Paste in missing lyrics -------- ##

picture_to_burn_lyrics <-
  (
    "State the obvious, I didn't get my perfect fantasy
    I realize you love yourself more than you could ever
    love me So go and tell your friends that I'm obsessive
    and crazy That's fine I'll tell mine you're gay And by
    the way I hate that stupid old pickup truck You never
    let me drive You're a redneck heartbreak Who's really bad
    at lying So watch me strike a match On all my wasted time
    As far as I'm concerned you'reJust another picture to burn
    There's no time for tears, I'm just sitting here planning my
    revenge There's nothing stopping me From going out with all
    of your best friends And if you come around saying sorry
    to me My daddy's gonna show you how sorry you'll be I hate
    that stupid old pickup truck You never let me drive You're
    a redneck heartbreak Who's really bad at lying So watch me
    strike a match On all my wasted time As far as I'm concerned
    you're Just another picture to burn If you're missing me, You'd
    better keep it to yourself Cause coming back around here Would be
    bad for your health I hate that stupid old pickup truck You
    never let me drive You're a redneck heartbreak Who's really
    bad at lying So watch me strike a match On all my wasted
    time In case you haven't heard, I really really hate that
    Burn, burn, burn, baby, burn You're just another picture
    to burn Baby, burn"
  )

tied_together_with_a_smile_lyrics <-
  (
    "Seems the only one who doesn't see your beauty Is the
    face in the mirror looking back at you You walk around
    here thinking you're not pretty But that's not true,
    'cause I know you Hold on Baby you're losing it The
    water's high You're jumping into it And letting go
    And no one knows That you cry But you don't tell anyone
    That you might Not be the golden one And you're tied
    together with a smile But you're coming undone I guess
    it's true that love was all you wanted 'Cause you're
    giving it away like it's extra change Hoping it will
    end up in his pocket But he leaves you out like a penny
    in the rain Oh, 'cause it's not his price to pay Not his
    price to pay Hold on Baby you're losing it The water's
    high You're jumping into it And letting go And no one
    knows That you cry But you don't tell anyone That you
    might Not be the golden one And you're tied together
    with a smile But you're coming undone Hold on Baby
    you're losing it The water's high You're jumping into
    it And letting go And no one knows That you cry But you
    don't tell anyone That you might Not be the golden one
    And you're tied together with a smile But you're coming undone"
  )

a_perfectly_good_heart_lyrics <-
  (
    "Why would you wanna break a perfectly good heart? Why would
    you wanna take our love and tear it all apart, now? Why would
    you wanna make the very first scar? Why would you wanna break
    a perfectly good heart? Maybe I should've seen the signs, should've
    read the writing on the wall And realized by the distance in your
    eyes that I would be the one to fall No matter what you say, I
    still can't believe That you would walk away It don't make sense
    to me, but Why would you wanna break a perfectly good heart? Why
    would you wanna take our love and tear it all apart, now? Why
    would you wanna make the very first scar? Why would you wanna
    break a perfectly good heart? It's not unbroken anymore How do
    I get it back the way it was before? Why would you wanna break
    a perfectly good heart? Why would you wanna take our love and
    tear it all apart, now? Why would you wanna make the very first
    scar? Why would you wanna break a perfectly good heart? Why would
    you wanna break a perfectly good heart? Why would you wanna take
    our love and tear it all apart, now? Why would you wanna make the
    very first scar? Why would you wanna break a perfectly good heart?"
  )

invisible_lyrics <-
  (
    "She can't see the way your eyes Light up when you smile She'll never
    notice how you stop and stare Whenever she walks by And you can't see
    me wanting you the way you want her But you are everything to me I just
    want to show you She don't even know you She's never going to love you
    like I want to And you just see right through me If you only knew me
    We could be a beautiful Miracle Unbelievable Instead of just invisible
    There's a fire inside of you That can't help but shine through She's
    never going to see the light No matter what you do And all I think
    about is how to make you think of me And everything that we could be
    I just want to show you She don't even know you She's never going to
    love you like I want to And you just see right through me If you only
    knew me We could be a beautiful Miracle Unbelievable Instead of
    just invisible Like shadows in a faded light Oh, we're invisible I
    just want to open your eyes And make you realize I just want to show
    you She don't even know you Baby, let me love you Let me want you You
    just see right through me But if you only knew me We could be a beautiful
    Miracle Unbelievable Instead of just invisible She can't see the way your
    eyes Light up when you smile"
  )


## -------- Read in the lyrics from data folder -------- ##

# Initialize an empty vector to be filled with lyrics
ts1_song_lyrics <- (rep(NA, length(ts1_names)))

# Extract the lyrics from the data folder:
for (i in 1:length(ts1_names)) {
  ts1_song_lyrics[i] <- (
    paste0("../data/ts1/", ts1_names[i]) %>%
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

for (i in 1:length(ts1_song_lyrics)) {
  # First change everything to lowercase
  ts1_song_lyrics[[i]] <- tolower(ts1_song_lyrics[[i]])
  
  # Next remove any double quotations inside words
  ts1_song_lyrics[[i]] <-
    str_replace_all(ts1_song_lyrics[[i]], "\"", "")
  
  # Finally use gsub to remove the \ characters
  ts1_song_lyrics[[i]] <-
    (gsub("\\", "", ts1_song_lyrics[[i]], fixed = TRUE))
}

## -------- Clean the Manually entered lyrics -------- ##

picture_to_burn_lyrics <-
  str_replace_all(picture_to_burn_lyrics,
                  pattern = "[\n-]",
                  replacement = " ") %>%
  # Next we'll replace periods, commas, !, ?, and  parentheses with ""
  str_replace_all(pattern = "[\\.,!/?():]",
                  replacement = "") %>%
  str_split(pattern = " ")
picture_to_burn_lyrics[[1]] <-
  (tolower(picture_to_burn_lyrics[[1]]))

tied_together_with_a_smile_lyrics <-
  str_replace_all(tied_together_with_a_smile_lyrics,
                  pattern = "[\n-]",
                  replacement = " ") %>%
  # Next we'll replace periods, commas, !, ?, and  parentheses with ""
  str_replace_all(pattern = "[\\.,!/?():]",
                  replacement = "") %>%
  str_split(pattern = " ")
tied_together_with_a_smile_lyrics[[1]] <-
  (tolower(tied_together_with_a_smile_lyrics[[1]]))

a_perfectly_good_heart_lyrics <-
  str_replace_all(a_perfectly_good_heart_lyrics,
                  pattern = "[\n-]",
                  replacement = " ") %>%
  # Next we'll replace periods, commas, !, ?, and  parentheses with ""
  str_replace_all(pattern = "[\\.,!/?():]",
                  replacement = "") %>%
  str_split(pattern = " ")
a_perfectly_good_heart_lyrics[[1]] <-
  (tolower(a_perfectly_good_heart_lyrics[[1]]))

invisible_lyrics <-
  str_replace_all(invisible_lyrics, pattern = "[\n-]",
                  replacement = " ") %>%
  # Next we'll replace periods, commas, !, ?, and  parentheses with ""
  str_replace_all(pattern = "[\\.,!/?():]",
                  replacement = "") %>%
  str_split(pattern = " ")
invisible_lyrics[[1]] <- (tolower(invisible_lyrics[[1]]))

## -------- Manually adjust the ordering of the songs -------- ##

ts1_song_lyrics[14] <- "placeholder"
ts1_song_lyrics[14] <- a_perfectly_good_heart_lyrics
ts1_song_lyrics[13] <- invisible_lyrics
ts1_song_lyrics[12] <- ts1_song_lyrics[10]
ts1_song_lyrics[11] <- ts1_song_lyrics[9]
ts1_song_lyrics[10] <- ts1_song_lyrics[8]
ts1_song_lyrics[9] <- ts1_song_lyrics[7]
ts1_song_lyrics[8] <- ts1_song_lyrics[6]
ts1_song_lyrics[7] <- tied_together_with_a_smile_lyrics
ts1_song_lyrics[6] <- ts1_song_lyrics[5]
ts1_song_lyrics[5] <- ts1_song_lyrics[4]
ts1_song_lyrics[4] <- ts1_song_lyrics[3]
ts1_song_lyrics[3] <- ts1_song_lyrics[2]
ts1_song_lyrics[2] <- picture_to_burn_lyrics

## -------- Update TS1 Names -------- ##

ts1_names <- c("Tim McGraw",
               "Picture to Burn",
               "Teardrops on My Guitar",
               "A Place in This World",
               "Cold as You",
               "The Outside",
               "Tied Together with a Smile",
               "Stay Beautiful",
               "Should've Said No",
               "Mary's Song",
               "Our Song",
               "I'm Only Me When I'm With You",
               "Invisible",
               "A Perfectly Good Heart")

ts1_names <- str_replace_all(ts1_names, pattern = " ", replacement = "_")

## -------- Remove words that shouldn't be there -------- ##

# Remove some keywords that should not be counted as lyrics in my opinion
for (i in 1:length(ts1_song_lyrics)) {
  ts1_song_lyrics[[i]] <-
    ts1_song_lyrics[[i]][ts1_song_lyrics[[i]] != "la" &
                           ts1_song_lyrics[[i]] != "mmm" &
                           ts1_song_lyrics[[i]] != ""]
}


#==================================================================
# TS 2
#==================================================================

# No Songs Are Missing
ts2_names <- c("Fearless",
               "Fifteen",
               "Love Story",
               "Hey Stephen",
               "White Horse",
               "You Belong With Me",
               "Breathe",
               "Tell Me Why",
               "You're Not Sorry",
               "The Way I Loved You",
               "Forever And Always",
               "The Best Day",
               "Change")

ts2_names <- str_replace_all(ts2_names, pattern = " ", replacement = "_")

## -------- Read in the lyrics from data folder -------- ##

# Initialize an empty vector to be filled with lyrics
ts2_song_lyrics <- (rep(NA, length(ts2_names)))

# Read the data from the web source using pipe notation for brevity
for (i in 1:length(ts2_names)) {
  ts2_song_lyrics[i] <- (
    paste0("../data/ts2/", ts2_names[i]) %>%
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

for (i in 1:length(ts2_song_lyrics)) {
  # First change everything to lowercase
  ts2_song_lyrics[[i]] <- tolower(ts2_song_lyrics[[i]])
  
  # Next remove any double quotations inside words
  ts2_song_lyrics[[i]] <-
    str_replace_all(ts2_song_lyrics[[i]], "\"", "")
  
  # Finally use gsub to remove the \ characters
  ts2_song_lyrics[[i]] <-
    (gsub("\\", "", ts2_song_lyrics[[i]], fixed = TRUE))
}

for (i in 1:length(ts2_song_lyrics)) {
  ts2_song_lyrics[[i]] <-
    ts2_song_lyrics[[i]][ts2_song_lyrics[[i]] != "la" &
                           ts2_song_lyrics[[i]] != "mmm" &
                           ts2_song_lyrics[[i]] != ""]
}

#==================================================================
# TS 2.5 (Fearless Platinum)
#==================================================================

# Nothing Missing
fp_names <- c("Jump then Fall",
              "Untouchable",
              "Come in With the Rain",
              "SuperStar",
              "The Other Side of the Door")

fp_names <- str_replace_all(fp_names, pattern = " ", replacement = "_")

fp_song_lyrics <- (rep(NA, length(fp_names)))

## -------- Read in the lyrics from data folder -------- ##

# Read the data using pipe notation for brevity
for (i in 1:length(fp_names)) {
  fp_song_lyrics[i] <- (
    paste0("../data/ts2/", fp_names[i]) %>%
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

for (i in 1:length(fp_song_lyrics)) {
  # First change everything to lowercase
  fp_song_lyrics[[i]] <- tolower(fp_song_lyrics[[i]])
  
  # Next remove any double quotations inside words
  fp_song_lyrics[[i]] <-
    str_replace_all(fp_song_lyrics[[i]], "\"", "")
  
  # Finally use gsub to remove the \ characters
  fp_song_lyrics[[i]] <-
    (gsub("\\", "", fp_song_lyrics[[i]], fixed = TRUE))
}

for (i in 1:length(fp_song_lyrics)) {
  fp_song_lyrics[[i]] <-
    fp_song_lyrics[[i]][fp_song_lyrics[[i]] != "la" &
                          fp_song_lyrics[[i]] != "mmm" &
                          fp_song_lyrics[[i]] != ""]
}

#==================================================================
# TS 3
#==================================================================

# Nothing Missing
ts3_names <- c("Mine",
               "Sparks Fly",
               "Back To December",
               "Speak Now",
               "Dear John",
               "Mean",
               "The Story Of Us",
               "Never Grow Up",
               "Enchanted",
               "Better Than Revenge",
               "Innocent",
               "Haunted",
               "Last Kiss",
               "Long Live")

ts3_names <- str_replace_all(ts3_names, pattern = " ", replacement = "_")

# Initialize an empty vector to be filled with lyrics
ts3_song_lyrics <- (rep(NA, length(ts3_names)))

## -------- Read in the lyrics from data folder -------- ##

# Read the data from the web source using pipe notation for brevity
for (i in 1:length(ts3_names)) {
  ts3_song_lyrics[i] <- (
    paste0("../data/ts3/", ts3_names[i]) %>%
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

for (i in 1:length(ts3_song_lyrics)) {
  # First change everything to lowercase
  ts3_song_lyrics[[i]] <- tolower(ts3_song_lyrics[[i]])
  
  # Next remove any double quotations inside words
  ts3_song_lyrics[[i]] <-
    str_replace_all(ts3_song_lyrics[[i]], "\"", "")
  
  # Finally use gsub to remove the \ characters
  ts3_song_lyrics[[i]] <-
    (gsub("\\", "", ts3_song_lyrics[[i]], fixed = TRUE))
}

for (i in 1:length(ts3_song_lyrics)) {
  ts3_song_lyrics[[i]] <-
    ts3_song_lyrics[[i]][ts3_song_lyrics[[i]] != "la" &
                           ts3_song_lyrics[[i]] != "mmm" &
                           ts3_song_lyrics[[i]] != ""]
}

#==================================================================
# TS 4
#==================================================================

# Everything Has Changed is Missing, but it's manually added below
ts4_names <- c("State of Grace",
               "Red",
               "Treacherous",
               "I Knew You Were Trouble",
               "All Too Well",
               "22",
               "I Almost Do",
               "We Are Never Ever Getting Back Together",
               "Stay Stay Stay",
               "The Last Time",
               "Holy Ground",
               "Sad Beautiful Tragic",
               "The Lucky One",
               "Starlight",
               "Begin Again")

ts4_names <- str_replace_all(ts4_names, pattern = " ", replacement = "_")

## -------- Paste in missing lyrics -------- ##

everything_has_changed_lyrics <-
  (
    "All I knew this morning when I woke Is I know
    something now, know something now I didn't before
    And all I've seen since 18 hours ago is green
    eyes and freckles and your smile In the back of
    my mind making me feel like I just want to know
    you better Know you better, know you better now I
    just want to know you better Know you better, know
    you better now I just want to know you better Know
    you better, know you better now I just want to know
    you, know you, know you 'Cause all I know is we said
    hello And your eyes look like coming home All I know
    is a simple name, everything has changed All I know
    is you held the door You'll be mine and I'll be yours
    All I know since yesterday is everything has changed
    And all my walls stood tall painted blue And I'll take
    them down Take them down and open up the door for you
    And all I feel in my stomach is butterflies The beautiful
    kind, making up for lost time Taking flight, making me
    feel like I just want to know you better Know you better,
    know you better now I just want to know you better Know
    you better, know you better now I just want to know you
    better Know you better, know you better now I just want
    to know you, know you, know you 'Cause all I know is we
    said hello And your eyes look like coming home All I know
    is a simple name, everything has changed All I know is you
    held the door You'll be mine and I'll be yours All I know
    since yesterday is everything has changed Come back and
    tell me why I'm feeling like i've missed you all this
    time And meet me there tonight And let me know that
    it's not all in my mind I just want to know you better
    Know you better, know you better now I just want to
    know you, know you, know you 'Cause all I know is we
    said hello And your eyes look like coming home All
    I know is a simple name, everything has changed All
    I know is you held the door You'll be mine and I'll
    be yours All I know since yesterday is everything
    has changed All I know is we said hello So dust off
    your highest hopes All I know is pouring rain And
    everything has changed All I know is a new found
    grace All my days, I'll know your face All I know
    since yesterday is everything has changed"
  )

## -------- Read in the lyrics from data folder -------- ##

# Initialize an empty vector to be filled with lyrics
ts4_song_lyrics <- (rep(NA, length(ts4_names)))

# Read the data from the web source using pipe notation for brevity
for (i in 1:length(ts4_names)) {
  ts4_song_lyrics[i] <- (
    paste0("../data/ts4/", ts4_names[i]) %>%
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

for (i in 1:length(ts4_song_lyrics)) {
  # First change everything to lowercase
  ts4_song_lyrics[[i]] <- tolower(ts4_song_lyrics[[i]])
  
  # Next remove any double quotations inside words
  ts4_song_lyrics[[i]] <-
    str_replace_all(ts4_song_lyrics[[i]], "\"", "")
  
  # Finally use gsub to remove the \ characters
  ts4_song_lyrics[[i]] <-
    (gsub("\\", "", ts4_song_lyrics[[i]], fixed = TRUE))
}


## -------- Clean the Manually entered lyrics -------- ##

everything_has_changed_lyrics <-
  str_replace_all(everything_has_changed_lyrics,
                  pattern = "[\n-]",
                  replacement = " ") %>%
  # Next we'll replace periods, commas, !, ?, and  parentheses with ""
  str_replace_all(pattern = "[\\.,!/?():]",
                  replacement = "") %>%
  str_split(pattern = " ")
everything_has_changed_lyrics[[1]] <-
  (tolower(everything_has_changed_lyrics[[1]]))

## -------- Manually adjust the ordering of the songs -------- ##

ts4_song_lyrics[16] <- ts4_song_lyrics[15]
ts4_song_lyrics[15] <- ts4_song_lyrics[14]
ts4_song_lyrics[14] <- everything_has_changed_lyrics

## -------- Update TS4 Names -------- ##

ts4_names <- c("State of Grace",
               "Red",
               "Treacherous",
               "I Knew You Were Trouble",
               "All Too Well",
               "22",
               "I Almost Do",
               "We Are Never Ever Getting Back Together",
               "Stay Stay Stay",
               "The Last Time",
               "Holy Ground",
               "Sad Beautiful Tragic",
               "The Lucky One",
               "Everything Has Changed",
               "Starlight",
               "Begin Again")

ts4_names <- str_replace_all(ts4_names, pattern = " ", replacement = "_")

## -------- Remove words that shouldn't be there -------- ##

for (i in 1:length(ts4_song_lyrics)) {
  ts4_song_lyrics[[i]] <-
    ts4_song_lyrics[[i]][ts4_song_lyrics[[i]] != "la" &
                           ts4_song_lyrics[[i]] != "mmm" &
                           ts4_song_lyrics[[i]] != ""]
}

#==================================================================
# TS 5
#==================================================================

# Welcome to New York, All You Had To Do Was Stay, and Wildest Dreams are Missing
# All have been manually added
ts5_names <- c("Blank Space",
               "Style",
               "Out of the Woods",
               "Shake It Off",
               "I Wish You Would",
               "Bad Blood",
               "How You Get the Girl",
               "This Love",
               "I Know Places",
               "Clean",
               "Wonderland",
               "You Are in Love",
               "New Romantics")

ts5_names <- str_replace_all(ts5_names, pattern = " ", replacement = "_")

## -------- Paste in missing lyrics -------- ##

welcome_to_ny_lyrics <-
  (
    "Walking through a crowd, the village is aglow Kaleidoscope of loud
    heartbeats under coats Everybody here wanted something more Searching
    for a sound we hadn't heard before And it said Welcome to New York!
    It's been waiting for you Welcome to New York Welcome to New York
    Welcome to New York! It's been waiting for you Welcome to New York
    Welcome to New York It's a new soundtrack I could dance to this beat
    (beat) Forevermore The lights are so bright But they never blind me
    (me) Welcome to New York! It's been waiting for you Welcome to New
    York Welcome to New York When we first dropped our bags on apartment
    floors Took our broken hearts, put them in a drawer Everybody here
    was someone else before And you can want who you want Boys and boys
    and girls and girls Welcome to New York! It's been waiting for you
    Welcome to New York Welcome to New York Welcome to New York! It's
    been waiting for you Welcome to New York Welcome to New York It's a
    new soundtrack I could dance to this beat (beat) Forevermore The
    lights are so bright But they never blind me (me) Welcome to New York!
    It's been waiting for you Welcome to New York Welcome to New York
    Like any great love, it keeps you guessing Like any real love, it's
    ever-changing Like any true love, it drives you crazy But you know
    you wouldn't change anything, anything, anything Welcome to New York!
    It's been waiting for you Welcome to New York Welcome to New York
    Welcome to New York! It's been waiting for you Welcome to New York
    Welcome to New York It's a new soundtrack I could dance to this beat
    (beat) Forevermore The lights are so bright But they never blind me
    (me) Welcome to New York! It's been waiting for you Welcome to
    New York Welcome to New York"
  )

all_you_had_to_do_was_stay_lyrics <-
  (
    "People like you always want back The love they gave away
    And people like me wanna believe you When you say you've
    changed The more I think about it now The less I know All
    I know is that you drove us Off the road (Stay!) Hey All
    you had to do was stay Had me in the palm of your hand Then
    why'd you have to go and lock me out when I let you in?
    (Stay!) Hey Now you say you want it back Now that it's
    just too late Well could've been easy All you had to do
    was (stay!) All you had to do was (stay!) All you had to
    do was (stay!) All you had to do was (stay!) All you had
    to do was stay Here you are now calling me up But I don't
    know what to say I've been picking up the pieces Of the
    mess you made People like you always want back The love
    they pushed aside But people like me are gone forever
    When you say goodbye (Stay!) Hey All you had to do was stay
    Had me in the palm of your hand Then why'd you have to go
    and lock me out when I let you in? (Stay!) Hey Now you say
    you want it back Now that it's just too late Well could've
    been easy All you had to do was (stay!) All you had to do
    was (stay!) All you had to do was (stay!) All you had to
    do was (stay!) All you had to do was stay stay stay stay
    stay Let me remind you This was what you wanted (Oh! Oh!
    Oh-oh-oh!) You ended it You were all I wanted (Oh! Oh! Oh-oh-oh!)
    But not like this Not like this... not like this... Oh!
    All you had to do was! (Stay!) Hey All you had to do was
    stay Had me in the palm of your hand Then why'd you want
    to go and lock me out when I let you in? (Stay!) Hey Now
    you say you want it back Now that it's just too late
    Well could've been easy All you had to do was (Stay!)
    Hey All you had to do was stay Had me in the palm of
    your hand Then why'd you have to go and lock me out when
    I let you in? (Stay!) Hey Now you say you want it back Now
    that it's just too late (all you had to do was stay) Well
    could've been easy All you had to do was (stay!) All you
    had to do was (stay!) All you had to do was (stay!) All
    you had to do was (stay!) All you had to do was (stay!)"
  )

wildest_dreams_lyrics <-
  (
    "He said, Let's get out of this town Drive out of this city, away from
    the crowds I thought, Heaven can't help me now Nothing lasts forever,
    but this is gonna take me down He's so tall and handsome as hell He's
    so bad, but he does it so well I can see the end as it begins My one
    condition is Say you'll remember me Standing in a nice dress, staring
    at the sunset, babe Red lips and rosy cheeks Say you'll see me again,
    even if it's just in your Wildest dreams, Wildest dreams, I said, no
    one has to know what we do His hands are in my hair, his clothes are
    in my room And his voice is a familiar sound Nothing lasts forever,
    but this is gettin' good now He's so tall and handsome as hell He's so
    bad, but he does it so well And when we've had our very last kiss My
    last request, it is Say you'll remember me Standing in a nice dress,
    staring at the sunset, babe Red lips and rosy cheeks Say you'll see me
    again, even if it's just in your Wildest dreams, Wildest dreams You'll
    see me in hindsight, tangled up with you all night Burnin' it down
    Someday when you leave me, I'd bet these memories Follow you around
    You'll see me in hindsight, tangled up with you all night Burning
    (burning) it (it) down (down) Someday when you leave me, I'll bet these
    memories Follow (follow) you (you) around (around) (Follow you around)
    Say you'll remember me Standing in a nice dress, staring at the sunset,
    babe Red lips and rosy cheeks Say you'll see me again Even if it's just
    pretend Say you'll remember me Standing in a nice dress, staring at the
    sunset, babe Red lips and rosy cheeks Say you'll see me again Even if
    it's just in your (pretend, just pretend) Wildest dreams,  In your wildest
    dreams, Even if it's just in your Wildest dreams, In your wildest dreams"
  )


## -------- Read in the lyrics from data folder -------- ##

# Initialize an empty vector to be filled with lyrics
ts5_song_lyrics <- (rep(NA, length(ts5_names)))

# Read the data from the web source using pipe notation for brevity
for (i in 1:length(ts5_names)) {
  ts5_song_lyrics[i] <- (
    paste0("../data/ts5/", ts5_names[i]) %>%
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

for (i in 1:length(ts5_song_lyrics)) {
  # First change everything to lowercase
  ts5_song_lyrics[[i]] <- tolower(ts5_song_lyrics[[i]])
  
  # Next remove any double quotations inside words
  ts5_song_lyrics[[i]] <-
    str_replace_all(ts5_song_lyrics[[i]], "\"", "")
  
  # Finally use gsub to remove the \ characters
  ts5_song_lyrics[[i]] <-
    (gsub("\\", "", ts5_song_lyrics[[i]], fixed = TRUE))
}


## -------- Clean the Manually entered lyrics -------- ##

welcome_to_ny_lyrics <-
  str_replace_all(welcome_to_ny_lyrics,
                  pattern = "[\n-]",
                  replacement = " ") %>%
  # Next we'll replace periods, commas, !, ?, and  parentheses with ""
  str_replace_all(pattern = "[\\.,!/?():]",
                  replacement = "") %>%
  str_split(pattern = " ")
welcome_to_ny_lyrics[[1]] <- (tolower(welcome_to_ny_lyrics[[1]]))

all_you_had_to_do_was_stay_lyrics <-
  str_replace_all(all_you_had_to_do_was_stay_lyrics,
                  pattern = "[\n-]",
                  replacement = " ") %>%
  # Next we'll replace periods, commas, !, ?, and  parentheses with ""
  str_replace_all(pattern = "[\\.,!/?():]",
                  replacement = "") %>%
  str_split(pattern = " ")
all_you_had_to_do_was_stay_lyrics[[1]] <-
  (tolower(all_you_had_to_do_was_stay_lyrics[[1]]))

wildest_dreams_lyrics <-
  str_replace_all(wildest_dreams_lyrics,
                  pattern = "[\n-]",
                  replacement = " ") %>%
  # Next we'll replace periods, commas, !, ?, and  parentheses with ""
  str_replace_all(pattern = "[\\.,!/?():]",
                  replacement = "") %>%
  str_split(pattern = " ")
wildest_dreams_lyrics[[1]] <- (tolower(wildest_dreams_lyrics[[1]]))

## -------- Manually adjust the ordering of the songs -------- ##

ts5_song_lyrics[16] <- ts5_song_lyrics[13]
ts5_song_lyrics[15] <- ts5_song_lyrics[12]
ts5_song_lyrics[14] <- ts5_song_lyrics[11]
ts5_song_lyrics[13] <- ts5_song_lyrics[10]
ts5_song_lyrics[12] <- ts5_song_lyrics[9]
ts5_song_lyrics[11] <- ts5_song_lyrics[8]
ts5_song_lyrics[10] <- ts5_song_lyrics[7]
ts5_song_lyrics[9] <- wildest_dreams_lyrics
ts5_song_lyrics[8] <- ts5_song_lyrics[6]
ts5_song_lyrics[7] <- ts5_song_lyrics[5]
ts5_song_lyrics[6] <- ts5_song_lyrics[4]
ts5_song_lyrics[5] <- all_you_had_to_do_was_stay_lyrics
ts5_song_lyrics[4] <- ts5_song_lyrics[3]
ts5_song_lyrics[3] <- ts5_song_lyrics[2]
ts5_song_lyrics[2] <- ts5_song_lyrics[1]
ts5_song_lyrics[1] <- welcome_to_ny_lyrics

## -------- Update TS5 Names -------- ##

ts5_names <- c("Welcome to New York",
               "Blank Space",
               "Style",
               "Out of the Woods",
               "All you had to do was Stay",
               "Shake It Off",
               "I Wish You Would",
               "Bad Blood",
               "Wildest Dreams",
               "How You Get the Girl",
               "This Love",
               "I Know Places",
               "Clean",
               "Wonderland",
               "You Are in Love",
               "New Romantics")

ts5_names <- str_replace_all(ts5_names, pattern = " ", replacement = "_")

## -------- Remove words that shouldn't be there -------- ##

for (i in 1:length(ts5_song_lyrics)) {
  ts5_song_lyrics[[i]] <-
    ts5_song_lyrics[[i]][ts5_song_lyrics[[i]] != "la" &
                           ts5_song_lyrics[[i]] != "mmm" &
                           ts5_song_lyrics[[i]] != ""]
}

#==================================================================
# TS 6
#==================================================================

# Nothing Missing
ts6_names <- c("Ready For It",
               "End Game",
               "I Did Something Bad",
               "Don't Blame Me",
               "Delicate",
               "Look What You Made Me Do",
               "So It Goes",
               "Gorgeous",
               "Getaway Car",
               "King Of My Heart",
               "Dancing With Our Hands Tied",
               "Dress",
               "This Is Why We Can't Have Nice Things",
               "Call It What You Want",
               "New Year's Day")

ts6_names <- str_replace_all(ts6_names, pattern = " ", replacement = "_")


## -------- Read in the lyrics from data folder -------- ##

# Initialize an empty vector to be filled with lyrics
ts6_song_lyrics <- (rep(NA, length(ts6_names)))

# Read the data from the web source using pipe notation for brevity
for (i in 1:length(ts6_names)) {
  ts6_song_lyrics[i] <- (
    paste0("../data/ts6/", ts6_names[i]) %>%
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

for (i in 1:length(ts6_song_lyrics)) {
  # First change everything to lowercase
  ts6_song_lyrics[[i]] <- tolower(ts6_song_lyrics[[i]])
  
  # Next remove any double quotations inside words
  ts6_song_lyrics[[i]] <-
    str_replace_all(ts6_song_lyrics[[i]], "\"", "")
  
  # Finally use gsub to remove the \ characters
  ts6_song_lyrics[[i]] <-
    (gsub("\\", "", ts6_song_lyrics[[i]], fixed = TRUE))
}

for (i in 1:length(ts6_song_lyrics)) {
  ts6_song_lyrics[[i]] <-
    ts6_song_lyrics[[i]][ts6_song_lyrics[[i]] != "la" &
                           ts6_song_lyrics[[i]] != "mmm" &
                           ts6_song_lyrics[[i]] != ""]
}


#==================================================================
# All Songs Together
#==================================================================

all_ts_song_names <- c(ts1_names,
                       ts2_names,
                       fp_names,
                       ts3_names,
                       ts4_names,
                       ts5_names,
                       ts6_names)

all_ts_song_names <- str_replace_all(all_ts_song_names, pattern = "_", replacement = " ")

all_ts_song_lyrics <- c(ts1_song_lyrics,
                        ts2_song_lyrics,
                        fp_song_lyrics,
                        ts3_song_lyrics,
                        ts4_song_lyrics,
                        ts5_song_lyrics,
                        ts6_song_lyrics)
names(all_ts_song_lyrics) <- all_ts_song_names

## -------- Remove the word "I" from all songs -------- ##

for (i in 1:length(all_ts_song_lyrics)) {
  all_ts_song_lyrics[[i]] <- all_ts_song_lyrics[[i]][all_ts_song_lyrics[[i]] != "i"]
}

