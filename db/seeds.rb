# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: "Professional")
Category.create(name: "Knowledge")
Category.create(name: "Health")
Category.create(name: "Relationships")
Task.create(name: "Learn to Network", category_id: 1)
Task.create(name: "Learn React", category_id: 2)
Task.create(name: "Run a Marathon", category_id: 3)
Task.create(name: "Make More Friends", category_id: 4)
