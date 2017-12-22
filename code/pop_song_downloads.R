#==================================================================
# This script downloads various pop song lyrics to your computer
# Requires the same file structure as on my computer 
# (Alternatively change the file paths to match yours) 
# Author: Bailey Joseph
# Date: 2017-12-18
#==================================================================

# Katy Perry

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

kp_urls <- c("http://www.songtexte.com/songtext/katy-perry/roar-3b53a054.html",
              "http://www.songtexte.com/songtext/katy-perry/legendary-lovers-3519da3.html",
              "http://www.songtexte.com/songtext/katy-perry/birthday-13519da9.html",
              "http://www.songtexte.com/songtext/katy-perry/unconditionally-1b519dac.html",
              "http://www.songtexte.com/songtext/katy-perry-feat-juicy-j/dark-horse-1b510dd8.html",
              "http://www.songtexte.com/songtext/katy-perry/this-is-how-we-do-b519da2.html",
              "http://www.songtexte.com/songtext/katy-perry/international-smile-1b519da8.html",
              "http://www.songtexte.com/songtext/katy-perry/ghost-13519da1.html",
              "http://www.songtexte.com/songtext/katy-perry/love-me-1b519da0.html",
              "http://www.songtexte.com/songtext/katy-perry/this-moment-13519dad.html")

for (i in 1:length(kp_urls)) {
  download.file(url = kp_urls[i],
                destfile = paste0("../data/katy_perry/", kp_names[i]))
}

#--- Pop Songs:


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

top_pop_urls <- c("http://www.songtexte.com/songtext/camila-cabello/havana-g13fba5f9.html",
                  "http://www.songtexte.com/songtext/imagine-dragons/thunder-g3bf374d4.html",
                  "http://www.songtexte.com/songtext/maroon-5-feat-sza/what-lovers-do-g63f9e263.html",
                  "http://www.songtexte.com/songtext/halsey/bad-at-love-g73f04601.html",
                  "http://www.songtexte.com/songtext/ed-sheeran-and-beyonce/perfect-g5be2ff54.html",
                  "http://www.songtexte.com/songtext/ariana-grande/side-to-side-5313039d.html",
                  "http://www.songtexte.com/songtext/maroon-5/dont-wanna-know-feat-kendrick-lamar-4b3b7ba2.html",
                  "http://www.songtexte.com/songtext/alessia-cara/scars-to-your-beautiful-336610ad.html",
                  "http://www.songtexte.com/songtext/the-chainsmokers/closer-feat-halsey-430ee313.html",
                  "http://www.songtexte.com/songtext/the-weeknd/starboy-133e1991.html",
                  "http://www.songtexte.com/songtext/justin-bieber/sorry-237928b3.html",
                  "http://www.songtexte.com/songtext/adele/hello-4379270f.html",
                  "http://www.songtexte.com/songtext/selena-gomez/same-old-love-37b61f7.html",
                  "http://www.songtexte.com/songtext/alessia-cara/here-437c0b27.html",
                  "http://www.songtexte.com/songtext/ellie-goulding/on-my-mind-37bc933.html",
                  "http://www.songtexte.com/songtext/maroon-5/animals-134e1db1.html",
                  "http://www.songtexte.com/songtext/ed-sheeran/dont-6b4572c2.html",
                  "http://www.songtexte.com/songtext/calvin-harris/blame-2b437c92.html",
                  "http://www.songtexte.com/songtext/nick-jonas/jealous-5b4f2338.html",
                  "http://www.songtexte.com/songtext/mr-probz/waves-3b5a9c7c.html",
                  "http://www.songtexte.com/songtext/eminem/the-monster-featuring-rihanna-135fc905.html",
                  "http://www.songtexte.com/songtext/imagine-dragons/demons-6b830276.html",
                  "http://www.songtexte.com/songtext/onerepublic/counting-stars-5ba147f0.html",
                  "http://www.songtexte.com/songtext/avicii/wake-me-up-7b54da54.html",
                  "http://www.songtexte.com/songtext/miley-cyrus/wrecking-ball-1b5095c0.html")

for (i in 1:length(top_pop_urls)) {
  download.file(url = top_pop_urls[i],
                destfile = paste0("../data/pop_charts/", top_pop_names[i]))
}

