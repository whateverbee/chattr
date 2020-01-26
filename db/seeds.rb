# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Jane", password: "12345")
User.create(username: "Bob", password: "password")
User.create(username: "Sam", password: "anotherpassword")
User.create(username: "Jonas", password: "111222y")
User.create(username: "Rashid", password: "asgagsdew2")
Message.new(body: "First message ever! Super cool", user_id: 3)
Message.new(body: "Oh hey, sup?", user_id: 5)
Message.new(body: "Hello!", user_id: 1)
