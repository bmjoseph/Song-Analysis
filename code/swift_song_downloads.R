#==================================================================
# This script downloads Taylor Swift lyrics to your computer
# Some songs are missing
# Requires the same file structure as on my computer 
# (Alternatively change the file paths to match yours) 
#==================================================================

library(rvest) # For web mining
library(stringr) # For cleaning Strings

# Download 'Taylor Swift'
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

ts1_urls <- c("http://www.songtexte.com/songtext/taylor-swift/tim-mcgraw-43d68bdb.html",
              "http://www.songtexte.com/songtext/taylor-swift/teardrops-on-my-guitar-53d68bd9.html",
              "http://www.songtexte.com/songtext/taylor-swift/a-place-in-this-world-5bd68bd8.html",
              "http://www.songtexte.com/songtext/taylor-swift/cold-as-you-43d68bdf.html",
              "http://www.songtexte.com/songtext/taylor-swift/the-outside-4bd68bde.html",
              "http://www.songtexte.com/songtext/taylor-swift/stay-beautiful-5bd68bdc.html",
              "http://www.songtexte.com/songtext/taylor-swift/shouldve-said-no-4b4ba34a.html",
              "http://www.songtexte.com/songtext/taylor-swift/marys-song-oh-my-my-my-1b738dc8.html",
              "http://www.songtexte.com/songtext/taylor-swift/our-song-53d68bd1.html",
              "http://www.songtexte.com/songtext/taylor-swift/im-only-me-when-im-with-you-434ba34b.html",
              "http://www.songtexte.com/songtext/taylor-swift/invisible-43d68bd7.html")

for (i in 1:length(ts1_urls)) {
  download.file(url = ts1_urls[i],
                destfile = paste0("../data/ts1/", ts1_names[i]))
}


# Download 'Fearless'
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

ts2_urls <- c("http://www.songtexte.com/songtext/taylor-swift/fearless-53cd27b9.html",
              "http://www.songtexte.com/songtext/taylor-swift/fifteen-5bcd27b8.html",
              "http://www.songtexte.com/songtext/taylor-swift/love-story-bccd59e.html",
              "http://www.songtexte.com/songtext/taylor-swift/hey-stephen-43cd27bf.html",
              "http://www.songtexte.com/songtext/taylor-swift/white-horse-4bcd27be.html",
              "http://www.songtexte.com/songtext/taylor-swift/you-belong-with-me-53cd27bd.html",
              "http://www.songtexte.com/songtext/taylor-swift-feat-colbie-caillat/breathe-bb41596.html",
              "http://www.songtexte.com/songtext/taylor-swift/tell-me-why-43cd27b3.html",
              "http://www.songtexte.com/songtext/taylor-swift/youre-not-sorry-5b4ba348.html",
              "http://www.songtexte.com/songtext/taylor-swift/the-way-i-loved-you-53cd27b1.html",
              "http://www.songtexte.com/songtext/taylor-swift/forever-and-always-5bcd27b0.html",
              "http://www.songtexte.com/songtext/taylor-swift/the-best-day-43cd27b7.html",
              "http://www.songtexte.com/songtext/taylor-swift/change-3ccd59f.html")

for (i in 1:length(ts2_urls)) {
  download.file(url = ts2_urls[i],
                destfile = paste0("../data/ts2/", ts2_names[i]))
}

# Download 'Fearless Platinum'
fp_names <- c("Jump then Fall",
              "Untouchable",
              "Come in With the Rain",
              "SuperStar",
              "The Other Side of the Door")

fp_names <- str_replace_all(fp_names, pattern = " ", replacement = "_")

fp_urls <- c("http://www.songtexte.com/songtext/taylor-swift/jump-then-fall-13fb71a5.html",
             "http://www.songtexte.com/songtext/taylor-swift/untouchable-bfb719a.html",
             "http://www.songtexte.com/songtext/taylor-swift/come-in-with-the-rain-3fb719b.html",
             "http://www.songtexte.com/songtext/taylor-swift/superstar-13fb7199.html",
             "http://www.songtexte.com/songtext/taylor-swift/the-other-side-of-the-door-1bfb7198.html")

for (i in 1:length(fp_urls)) {
  download.file(url = fp_urls[i],
                destfile = paste0("../data/ts2/", fp_names[i]))
}
# Download 'Speak Now'
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

ts3_urls <- c("http://www.songtexte.com/songtext/taylor-swift/mine-53ebbb5d.html",
              "http://www.songtexte.com/songtext/taylor-swift/sparks-fly-4be8472e.html",
              "http://www.songtexte.com/songtext/taylor-swift/back-to-december-5be84730.html",
              "http://www.songtexte.com/songtext/taylor-swift/speak-now-43e8472f.html",
              "http://www.songtexte.com/songtext/taylor-swift/dear-john-4be84732.html",
              "http://www.songtexte.com/songtext/taylor-swift/mean-53e84729.html",
              "http://www.songtexte.com/songtext/taylor-swift/the-story-of-us-5be84728.html",
              "http://www.songtexte.com/songtext/taylor-swift/never-grow-up-43e8472b.html",
              "http://www.songtexte.com/songtext/taylor-swift/enchanted-43e84737.html",
              "http://www.songtexte.com/songtext/taylor-swift/better-than-revenge-4be8472a.html",
              "http://www.songtexte.com/songtext/taylor-swift/innocent-4be84736.html",
              "http://www.songtexte.com/songtext/taylor-swift/haunted-53e84731.html",
              "http://www.songtexte.com/songtext/taylor-swift/last-kiss-53e84735.html",
              "http://www.songtexte.com/songtext/taylor-swift/long-live-5be84734.html")

for (i in 1:length(ts3_urls)) {
  download.file(url = ts3_urls[i],
                destfile = paste0("../data/ts3/", ts3_names[i]))
}

# Download 'Red'
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

ts4_urls <- c("http://www.songtexte.com/songtext/taylor-swift/state-of-grace-6ba78a66.html",
              "http://www.songtexte.com/songtext/taylor-swift/red-6ba6de46.html",
              "http://www.songtexte.com/songtext/taylor-swift/treacherous-5ba71b58.html",
              "http://www.songtexte.com/songtext/taylor-swift/i-knew-you-were-trouble-53a71b59.html",
              "http://www.songtexte.com/songtext/taylor-swift/all-too-well-53a71b61.html",
              "http://www.songtexte.com/songtext/taylor-swift/22-5ba71b6c.html",
              "http://www.songtexte.com/songtext/taylor-swift/i-almost-do-4ba71b5a.html",
              "http://www.songtexte.com/songtext/taylor-swift/we-are-never-ever-getting-back-together-6bbbb21a.html",
              "http://www.songtexte.com/songtext/taylor-swift/stay-stay-stay-5ba71b60.html",
              "http://www.songtexte.com/songtext/taylor-swift/the-last-time-43a71b63.html",
              "http://www.songtexte.com/songtext/taylor-swift/holy-ground-4ba71b66.html",
              "http://www.songtexte.com/songtext/taylor-swift/sad-beautiful-tragic-43a71b5b.html",
              "http://www.songtexte.com/songtext/taylor-swift/the-lucky-one-4ba71b5e.html",
              "http://www.songtexte.com/songtext/taylor-swift/starlight-5ba71b64.html",
              "http://www.songtexte.com/songtext/taylor-swift/begin-again-63a6de47.html")

for (i in 1:length(ts4_urls)) {
  download.file(url = ts4_urls[i],
                destfile = paste0("../data/ts4/", ts4_names[i]))
}

# Download '1989'
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

ts5_urls <- c("http://www.songtexte.com/songtext/taylor-swift/blank-space-1b4b81f8.html",
              "http://www.songtexte.com/songtext/taylor-swift/style-134b8105.html",
              "http://www.songtexte.com/songtext/taylor-swift/out-of-the-woods-5b4a330c.html",
              "http://www.songtexte.com/songtext/taylor-swift/shake-it-off-334fc85d.html",
              "http://www.songtexte.com/songtext/taylor-swift/i-wish-you-would-34b81fb.html",
              "http://www.songtexte.com/songtext/taylor-swift/bad-blood-34b8107.html",
              "http://www.songtexte.com/songtext/taylor-swift/how-you-get-the-girl-b4b81fa.html",
              "http://www.songtexte.com/songtext/taylor-swift/this-love-b4b8106.html",
              "http://www.songtexte.com/songtext/taylor-swift/i-know-places-1b4b8104.html",
              "http://www.songtexte.com/songtext/taylor-swift/clean-1b4b8100.html",
              "http://www.songtexte.com/songtext/taylor-swift/wonderland-234b384f.html",
              "http://www.songtexte.com/songtext/taylor-swift/you-are-in-love-3b4b384c.html",
              "http://www.songtexte.com/songtext/taylor-swift/new-romantics-2b4b3842.html")

for (i in 1:length(ts5_urls)) {
  download.file(url = ts5_urls[i],
                destfile = paste0("../data/ts5/", ts5_names[i]))
}

# Download 'Reputation
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

ts6_urls <- c("http://www.songtexte.com/songtext/taylor-swift/ready-for-it-g53fa6791.html",
              "http://www.songtexte.com/songtext/taylor-swift-feat-ed-sheeran-and-future/end-game-g3be4e00c.html",
              "http://www.songtexte.com/songtext/taylor-swift/i-did-something-bad-g33e4e009.html",
              "http://www.songtexte.com/songtext/taylor-swift/dont-blame-me-g2be4e016.html",
              "http://www.songtexte.com/songtext/taylor-swift/delicate-g3be4e008.html",
              "http://www.songtexte.com/songtext/taylor-swift/look-what-you-made-me-do-g13fabd81.html",
              "http://www.songtexte.com/songtext/taylor-swift/so-it-goes-g2be4e00e.html",
              "http://www.songtexte.com/songtext/taylor-swift/gorgeous-g73e6723d.html",
              "http://www.songtexte.com/songtext/taylor-swift/getaway-car-g33e4e015.html",
              "http://www.songtexte.com/songtext/taylor-swift/king-of-my-heart-g3be4e014.html",
              "http://www.songtexte.com/songtext/taylor-swift/dancing-with-our-hands-tied-g33e4e00d.html",
              "http://www.songtexte.com/songtext/taylor-swift/dress-g23e4e00f.html",
              "http://www.songtexte.com/songtext/taylor-swift/this-is-why-we-cant-have-nice-things-g2be4e00a.html",
              "http://www.songtexte.com/songtext/taylor-swift/call-it-what-you-want-g3be734ec.html",
              "http://www.songtexte.com/songtext/taylor-swift/new-years-day-g23e4e00b.html")


for (i in 1:length(ts6_urls)) {
  download.file(url = ts6_urls[i],
                destfile = paste0("../data/ts6/", ts6_names[i]))
}
