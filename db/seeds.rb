# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(username: 'igor')

Post.create(text: "This is the sample post \nspanning multiple \nlines.", user: User.first)
Post.create(text: "Feel free to click here and make some comments. \nIt's fun!", user: User.first)

Comment.create(text: "Very cool!", post: Post.last, user: User.first)