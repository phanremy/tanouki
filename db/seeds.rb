# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

_superadmin = User.create(email: 'superadmin@example.com', password: 'password', confirmed: true, admin: true)
admin = User.create(email: 'admin@example.com', password: 'password', confirmed: true, admin: true)
user = User.create(email: 'user@example.com', password: 'password', confirmed: true, admin: false)
_visitor = User.create(email: 'visitor@example.com', password: 'password', confirmed: false, admin: false)

Post.create(title: 'User\'s first post', body: 'This is the first post of the visitor', user: user)
Post.create(title: 'Admin\'s first post', body: 'This is the first post of the admin', user: admin)
