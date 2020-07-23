# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(user_name: "hyojin", password_digest: "bashir", bio: "hello!")
Doodle.create(user_id: 1, name: "art", width: 400, height: 400)
Line.create(doodle_id: 1, brushColor: "#000", brushRadius: 10)
Point.create(x: 12, y: 11, line_id: 1)
