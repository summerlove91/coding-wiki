# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'random_data'

# 5.times do
#     user= User.create!(
#         name: "Standard User",
#         email: "email@email.com",
#         password: "password",
#         standard: true,
#         premium: false,
#         admin: false
#         )
# end
#
premium_user = User.create!(
    name: "Premium User",
    email: "gkdus4030@gmail.com",
    password: "password",
    standard: false,
    premium: true,
    admin: false
    )
end
#
#
# admin_user = User.create!(
#     name: "Admin User",
#     email: "gkdus4030@naver.com",
#     password: "password",
#     standard: false,
#     premium: false,
#     admin: true
#     )
#
#
users = User.all
console.log(users)
#
# # 10.times do
# #     Wiki.create!(
# #         title: RandomData.random_sentence,
# #         body: RandomData.random_paragraph,
# #         private: false,
# #         user: User.last
# #         )
# # end
#
# wikis = Wiki.all
#
# puts "Seed finished"
# puts "#{users.count} users created"
# puts "#{wikis.count} wikis created"

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

# 12.times do
#     Wiki.create!(
#         user: users.sample,
#         title: RandomData.random_sentence,
#         body: RandomData.random_paragraph,
#         # private: false
#         )
# end
#
# wikis = Wiki.all
#
# 20.times do
#    Comment.create!(
#      user: users.sample,
#      wiki: wikis.sample,
#      body: RandomData.random_paragraph
#    )
# end

puts users
puts "Seed finished"
puts "#{users.count} users created"
puts "#{wikis.count} wikis created"
