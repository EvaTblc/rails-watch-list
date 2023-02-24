require 'open-uri'

puts "Cleaning database..."
Bookmark.destroy_all
List.destroy_all
Movie.destroy_all

puts "Create some movies..."
wonder = Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

puts "Create some lists..."
file = URI.open("https://images2.minutemediacdn.com/image/upload/c_fill,w_720,ar_16:9,f_auto,q_auto,g_auto/shape/cover/sport/646987-jasin-boland-c-2012-warner-bros-entertainment-inc-54e2f8c553776eafbfd8ede11121a700.jpg")
action = List.create(name: "Action")
action.photo.attach(io: file, filename: "action.png", content_type: "action/png")
action.save

fileav = URI.open("https://media.ngroup.be/IMAGE/IMAGE-S1-00013/48998-indiana-jones.jpg")
aventure = List.create(name: "Aventure")
aventure.photo.attach(io: fileav, filename: "aventure.png", content_type: "aventure/png")
aventure.save

filero = URI.open("https://hips.hearstapps.com/hmg-prod/images/hbz-most-romantic-movies-pride-and-prejudice-1549569450.jpg")
romance = List.create(name: "Romance")
romance.photo.attach(io: filero, filename: "aventure.png", content_type: "aventure/png")
romance.save

filepo = URI.open("https://media.gqindia.com/wp-content/uploads/2020/02/7-Bollywood-cop-movies-on-Amazon-Prime-Video-Netflix-and-Hotstar-to-binge-this-week.jpg")
policier = List.create(name: "Policier")
policier.photo.attach(io: filepo, filename: "aventure.png", content_type: "aventure/png")
policier.save

puts "Create bookmark"
Bookmark.create(comment: "Un vrai film de nanas", movie: wonder, list: action)

puts "Finished !"
