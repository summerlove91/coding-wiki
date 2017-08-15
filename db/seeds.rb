# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'random_data'

3.times do
    User.create!(
        name: "Standard User",
        email: RandomData.random_email,
        password: "password",
        standard: true,
        premium: false,
        admin: false
        )
end

2.times do
    User.create!(
        name: "Premiun User",
        email: RandomData.random_email,
        password: "password",
        standard: false,
        premium: true,
        admin: false
        )
end

2.times do
    User.create!(
        name: "Admin",
        email: RandomData.random_email,
        password: "password",
        standard: false,
        premium: false,
        admin: true
        )
end

users = User.all

# 2.times do
#     Wiki.create!(
#         title: RandomData.random_sentence,
#         body: RandomData.random_paragraph,
#         # private: false
#         )
# end

# wikis = Wiki.all

puts "Seed finished"
puts "#{users.count} users created"
# puts "#{wikis.count} wikis created"
