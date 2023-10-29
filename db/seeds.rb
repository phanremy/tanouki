# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

_superadmin = User.create_with(password: 'password')
                  .find_or_create_by(email: 'superadmin@example.com', confirmed: true, admin: true)
admin = User.create_with(password: 'password')
            .find_or_create_by(email: 'admin@example.com', confirmed: true, admin: true)
user = User.create_with(password: 'password')
           .find_or_create_by(email: 'user@example.com', confirmed: true, admin: false)
_visitor = User.create_with(password: 'password')
               .find_or_create_by(email: 'visitor@example.com', confirmed: false, admin: false)

Post.find_or_create_by(title: 'User\'s first post', body: 'This is the first post of the visitor', user: user)
Post.find_or_create_by(title: 'Admin\'s first post', body: 'This is the first post of the admin', user: admin)

item1 = Item.find_or_create_by(description: 'admin\'s first item', state: 'new', user: admin)
item2 = Item.find_or_create_by(description: 'user\'s first item', state: 'new', user: user)

list = List.find_or_create_by(description: 'admin\'s first list', user: admin)

ListItem.find_or_create_by(list: list, item: item1)
ListItem.find_or_create_by(list: list, item: item2)
