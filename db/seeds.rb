# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.destroy_all
Game.destroy_all
Deal.destroy_all
PlayerGame.destroy_all
Trick.destroy_all

p = Player.create(username: "primus", password: "password", email: "primus@senate.gov", country: "Italy")
s = Player.create(username: "secundus", password: "password", email: "secundus@senate.gov", country: "Turkey")
t = Player.create(username: "tertius", password: "password", email: "tertius@senate.gov", country: "Greece")
q = Player.create(username: "quartus", password: "password", email: "quartus@senate.gov", country: "France")


