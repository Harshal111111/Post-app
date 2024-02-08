# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(username: 'test_user1', email: 'test_user1@example.com', password: 'password1')
user2 = User.create(username: 'test_user2', email: 'user2@example.com', password: 'password2')

user1.posts.create(title: 'First Post', content: 'This is the content of the first post')
user2.posts.create(title: 'Second Post', content: 'This is the content of the second post')
