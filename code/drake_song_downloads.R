#==================================================================
# This script downloads various drake song lyrics to your computer
# Requires the same file structure as on my computer 
# (Alternatively change the file paths to match yours) 
# Author: Bailey Joseph
# Date: 2017-12-20
#==================================================================

#--- Take Care

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

tc_urls <- c("http://www.songtexte.com/songtext/drake-feat-chantal-kreviazuk/over-my-dead-body-7b5b8244.html",
              "http://www.songtexte.com/songtext/drake/shot-for-me-5396bbc5.html",
              "http://www.songtexte.com/songtext/drake/headlines-4be977b2.html",
              "http://www.songtexte.com/songtext/drake-feat-the-weeknd/crew-love-4bb9c73a.html",
              "http://www.songtexte.com/songtext/drake-feat-rihanna/take-care-5bb9c744.html",
              "http://www.songtexte.com/songtext/drake/marvins-room-53e977b1.html",
              "http://www.songtexte.com/songtext/drake/under-ground-kings-6b96ba72.html",
              "http://www.songtexte.com/songtext/drake-feat-nicki-minaj/make-me-proud-7386da3d.html",
              "http://www.songtexte.com/songtext/drake-feat-rick-ross/lord-knows-4bb9c746.html",
              "http://www.songtexte.com/songtext/drake/cameras-good-ones-go-interlude-4b96bbbe.html",
              "http://www.songtexte.com/songtext/drake-feat-stevie-wonder/doing-it-wrong-735b8245.html",
              "http://www.songtexte.com/songtext/drake-feat-lil-wayne-and-andre-3000/the-real-her-6b70a282.html",
              "http://www.songtexte.com/songtext/drake/look-what-youve-done-4396bba3.html",
              "http://www.songtexte.com/songtext/drake-feat-lil-wayne/hyfr-hell-ya-fuckin-right-7370a281.html",
              "http://www.songtexte.com/songtext/drake/practice-4b96bb9e.html",
              "http://www.songtexte.com/songtext/drake-feat-the-weeknd/the-ride-43b9c73b.html")


#for (i in 1:length(tc_urls)) {
  #download.file(url = tc_urls[i],
          #      destfile = paste0("../data/drake/tc/", tc_names[i]))
#}

#--- Nothing Was The Same


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

nwts_urls <- c("http://www.songtexte.com/songtext/drake/tuscan-leather-1b51bd14.html",
               "http://www.songtexte.com/songtext/drake/furthest-thing-351bd17.html",
               "http://www.songtexte.com/songtext/drake/started-from-the-bottom-4ba1637a.html",
               "http://www.songtexte.com/songtext/drake/wu-tang-forever-1351bd1d.html",
               "http://www.songtexte.com/songtext/drake/own-it-1b51bd10.html",
               "http://www.songtexte.com/songtext/drake/worst-behavior-b51bd12.html",
               "http://www.songtexte.com/songtext/drake-feat-jhene-aiko/from-time-735eb271.html",
               "http://www.songtexte.com/songtext/drake-feat-majid-jordan/hold-on-were-going-home-g2bd7b48e.html",
               "http://www.songtexte.com/songtext/drake/connect-1b51bd1c.html",
               "http://www.songtexte.com/songtext/drake/the-language-351bd13.html",
               "http://www.songtexte.com/songtext/drake-feat-detail/305-to-my-city-635eb273.html",
               "http://www.songtexte.com/songtext/drake-feat-sampha/too-much-b51bd0a.html",
               "http://www.songtexte.com/songtext/drake-feat-jay-z/pound-cake-paris-morton-music-2-7b5eb27c.html")

for (i in 1:length(nwts_urls)) {
    download.file(url = nwts_urls[i],
       destfile = paste0("../data/drake/nwts/", nwts_names[i]))
}


#--- If You're reading this it's too late

#Not including wednesday night interlude since it's not drake

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

iyritl_urls <- c("http://www.songtexte.com/songtext/drake/legend-4374539f.html",
                  "http://www.songtexte.com/songtext/drake/energy-537453a5.html",
                  "http://www.songtexte.com/songtext/drake/10-bands-5374539d.html",
                  "http://www.songtexte.com/songtext/drake/know-yourself-4b74539e.html",
                  "http://www.songtexte.com/songtext/drake/no-tellin-6365521f.html",
                  "http://www.songtexte.com/songtext/drake/madonna-4b74539a.html",
                  "http://www.songtexte.com/songtext/drake/6-god-b77b5be.html",
                  "http://www.songtexte.com/songtext/drake-feat-partynextdoor/preach-5375ff65.html",
                  "http://www.songtexte.com/songtext/drake-feat-lil-wayne/used-to-53745395.html",
                  "http://www.songtexte.com/songtext/drake/6-man-4b745392.html",
                  "http://www.songtexte.com/songtext/drake/now-and-forever-43745397.html",
                  "http://www.songtexte.com/songtext/drake/company-53745391.html",
                  "http://www.songtexte.com/songtext/drake/you-and-the-6-43745393.html",
                  "http://www.songtexte.com/songtext/drake/jungle-4b745396.html",
                 "http://www.songtexte.com/songtext/drake/6pm-in-new-york-5b7453a4.html")

for (i in 1:length(iyritl_urls)) {
  download.file(url = iyritl_urls[i],
                destfile = paste0("../data/drake/iyritl/", iyritl_names[i]))
}


#--- Views

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

views_urls <- c("http://www.songtexte.com/songtext/drake/keep-the-family-close-b137d46.html",
                  "http://www.songtexte.com/songtext/drake/9-13137d41.html",
                  "http://www.songtexte.com/songtext/drake/u-with-me-1b137d44.html",
                  "http://www.songtexte.com/songtext/drake/feel-no-ways-13137d3d.html",
                  "http://www.songtexte.com/songtext/drake/hype-13137d45.html",
                  "http://www.songtexte.com/songtext/drake/weston-road-flows-3137d3f.html",
                  "http://www.songtexte.com/songtext/drake/redemption-1b137d40.html",
                  "http://www.songtexte.com/songtext/drake-feat-partynextdoor/with-you-73109ab5.html",
                  "http://www.songtexte.com/songtext/drake-feat-pimp-c-and-dvsn/faithful-5b101fd4.html",
                  "http://www.songtexte.com/songtext/drake/still-here-b137d42.html",
                  "http://www.songtexte.com/songtext/drake/controlla-3137d3b.html",
                  "http://www.songtexte.com/songtext/drake-feat-wizkid-and-kyla/one-dance-6b109aaa.html",
                  "http://www.songtexte.com/songtext/drake-feat-future/grammys-7b109ab4.html",
                  "http://www.songtexte.com/songtext/drake/childs-play-3137d43.html",
                "http://www.songtexte.com/songtext/drake/pop-style-2b1254d2.html",
                "http://www.songtexte.com/songtext/drake-feat-rihanna/too-good-63109aab.html",
                "http://www.songtexte.com/songtext/drake/summers-over-interlude-3137d47.html",
                "http://www.songtexte.com/songtext/drake/fire-and-desire-1b137d38.html",
                "http://www.songtexte.com/songtext/drake/views-1b137d4c.html",
                "http://www.songtexte.com/songtext/drake/hotline-bling-2b7acc3e.html")

for (i in 1:length(views_urls)) {
  download.file(url = views_urls[i],
                destfile = paste0("../data/drake/views/", views_names[i]))
}

#--- More_Life

# 4422 is not drake
# Skepta Interlude is not Drake
## Neither are inlcuded

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

ml_urls <- c("http://www.songtexte.com/songtext/drake/free-smoke-g1bf4e1e8.html",
                  "http://www.songtexte.com/songtext/drake-feat-giggs/no-long-talk-g3f59523.html",
                  "http://www.songtexte.com/songtext/drake/passionfruit-gbf4e1f2.html",
                  "http://www.songtexte.com/songtext/drake/jorja-interlude-g1bf4e1f4.html",
                  "http://www.songtexte.com/songtext/drake-feat-black-coffee-and-jorja-smith/get-it-together-g13f59521.html",
                  "http://www.songtexte.com/songtext/drake/madiba-riddim-g3f4e1eb.html",
                  "http://www.songtexte.com/songtext/drake/blem-g13f4e1fd.html",
                  "http://www.songtexte.com/songtext/drake/gyalchester-gbf4e1ea.html",
                  "http://www.songtexte.com/songtext/drake-feat-quavo-and-travis-scott/portland-g1bf59520.html",
                  "http://www.songtexte.com/songtext/drake-feat-2-chainz-and-young-thug/sacrifices-g13f59525.html",
                  "http://www.songtexte.com/songtext/drake/nothings-into-somethings-g1bf4e104.html",
                  "http://www.songtexte.com/songtext/drake/teenage-fever-gbf4e1fa.html",
                  "http://www.songtexte.com/songtext/drake-feat-giggs/kmt-g3f59527.html",
                  "http://www.songtexte.com/songtext/drake/lose-you-g1bf4e1f0.html",
             "http://www.songtexte.com/songtext/drake/cant-have-everything-g13f4e1f9.html",
             "http://www.songtexte.com/songtext/drake-feat-kanye-west/glow-gbf59526.html",
             "http://www.songtexte.com/songtext/drake-feat-partynextdoor/since-way-back-gbf59522.html",
             "http://www.songtexte.com/songtext/drake/fake-love-5327d7e9.html",
             "http://www.songtexte.com/songtext/drake-feat-young-thug/ice-melts-g7bfede40.html",
             "http://www.songtexte.com/songtext/drake/do-not-disturb-g13f4e1e9.html")

for (i in 1:length(ml_urls)) {
  download.file(url = ml_urls[i],
                destfile = paste0("../data/drake/ml/", ml_names[i]))
}
