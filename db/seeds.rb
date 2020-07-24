# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user1 = User.create(user_name: "hyojin", password_digest: "bashir", bio: "hello!")
doodle1 = Doodle.create(user_id: user1.id, name: "art", width: 400, height: 400)
line1 = Line.create(doodle_id: doodle1.id, brushColor: "#000", brushRadius: 10)
point1 = Point.create(x: 12, y: 11, line_id: line1.id)

user2 = User.create(user_name: "Aleksa", password_digest: "bashir", bio: "world!")
doodle2 = Doodle.create(user_id: user2.id, name: "art", width: 400, height: 400)
line2 = Line.create(doodle_id: doodle2.id, brushColor: "#FFF", brushRadius: 10)
point2 = Point.create(x: 100, y: 100, line_id: line2.id)

def seed_points
  x = rand(30..100)
  y = rand(30..100)
  10.times do |i|
    x = x + rand(0..1.0)*i
    y = y + rand(0..1.0)*i
    Point.create(x: x, y: y, line_id: Line.first.id)
  end
end
seed_points()