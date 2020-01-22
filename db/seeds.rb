# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Game.destroy_all
Review.destroy_all
Developer.destroy_all

# User.reset_pk_sequence
# Game.reset_pk_sequence
# Review.reset_pk_sequence
# Developer.reset_pk_sequence

### User Seeds ###

user1 = User.create(username: "Ben", password: "123", critic: 1)
user2 = User.create(username: "Calvin", password: "123", critic: 0)
user3 = User.create(username: "Jacob", password: "123", critic: 1)
user4 = User.create(username: "Sacha", password: "123", critic: 0)
user5 = User.create(username: "Daniel", password: "123", critic: 0)
user6 = User.create(username: "Alisher", password: "123", critic: 0)
user7 = User.create(username: "Alona", password: "123", critic: 1)
user8 = User.create(username: "Jay", password: "123", critic: 0)
user9 = User.create(username: "Eunice", password: "123", critic: 0)
user10 = User.create(username: "Ian", password: "123", critic: 1)


### Developer Seeds ###

developer1 = Developer.create(name: "Tom", age: 34, experience: 7, studio: "Bethesda")
developer2 = Developer.create(name: "Bob", age: 30, experience: 4, studio: "Ensemble Studios")
developer3 = Developer.create(name: "Sally", age: 27, experience: 3, studio: "Nintendo Studios")
developer4 = Developer.create(name: "Susie", age: 28, experience: 2, studio: "Firaxis Games")
developer5 = Developer.create(name: "Tim", age: 31, experience: 5, studio: "Gearbox Software")
developer6 = Developer.create(name: "John", age: 39, experience: 7, studio: "Blizzard Entertainment")
developer7 = Developer.create(name: "David", age: 33, experience: 4, studio: "Guerilla Games")


### Game Seeds ###

game1 = Game.create(name: "Borderlands 3", year: 2019, description: "Open-world shooter", developer_id: developer1.id)
game2 = Game.create(name: "World of Warcraft", year: 2004, description: "Legendary time-sink", developer_id: developer6.id)
game3 = Game.create(name: "Starcraft", year: 1996, description: "Sci-Fi RTS", developer_id: developer5.id)
game4 = Game.create(name: "Age of Empires II", year: 1999, description: "Classic historical RTS", developer_id: developer2.id)
game5 = Game.create(name: "Super Smash Bros", year: 1999, description: "Battle royale", developer_id: developer3.id)
game6 = Game.create(name: "Civilization VI", year: 2016, description: "Turn-based world domination", developer_id: developer4.id)
game7 = Game.create(name: "Skyrim", year: 2011, description: "Mod city, dwemer everywhere", developer_id: developer1.id)
game8 = Game.create(name: "Horizon: Zero Dawn", year: 2017, description: "Sprawling post-apocalyptic RPG", developer_id: developer7.id) 
game9 = Game.create(name: "Morrowind", year: 2002, description: "This game will make you levitate", developer_id: developer1.id)
game10 = Game.create(name: "Oblivion", year: 2006, description: "Daedra portals as far as the eye can see", developer_id: developer1.id)



### Review Seeds ###

review1 = Review.create(content: "Good", rating: 4, title: "Game was alright.", game_id: game2.id, user_id: user1.id)
review2 = Review.create(content: "Okay", rating: 3, title: "Game was okay at best.", game_id: game1.id, user_id: user2.id)
review3 = Review.create(content: "Great", rating: 5, title: "GOTY contender!.", game_id: game2.id, user_id: user3.id)
review4 = Review.create(content: "Meh", rating: 2, title: "This game clearly needed more time in the oven.", game_id: game3.id, user_id: user1.id)
review4 = Review.create(content: "I am bored", rating: 3, title: "What a game!", game_id: game3.id, user_id: user1.id)
review5 = Review.create(content: "This is fun", rating: 6, title: "This is a title!", game_id: game4.id, user_id: user2.id)
review6 = Review.create(content: "Who is reading this?", rating: 5, title: "Who cares what I think?", game_id: game4.id, user_id: user3.id)
review7 = Review.create(content: "Empty review text", rating: 1, title: "Listen to my opinion", game_id: game5.id, user_id: user4.id)
review8 = Review.create(content: "One review to review them all", rating: 9, title: "You need to care", game_id: game6.id, user_id: user5.id)
review9 = Review.create(content: "This is working, right?", rating: 8, title: "Is this it?", game_id: game7.id, user_id: user6.id)
review10 = Review.create(content: "Golly gee it sure is good, yea", rating: 8, title: "Post Title Placeholder", game_id: game8.id, user_id: user7.id)
review11 = Review.create(content: "Some review", rating: 6, title: "One Post to Title them All", game_id: game9.id, user_id: user8.id)
review12 = Review.create(content: "This exists", rating: 4, title: "This is a review", game_id: game10.id, user_id: user9.id)
review13 = Review.create(content: "I don't know what to write.", rating: 2, title: "Review of the century", game_id: game3.id, user_id: user10.id)