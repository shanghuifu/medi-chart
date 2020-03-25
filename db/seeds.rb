# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Schedule.create([{time: "~9:40"},
                  {time: "10:00"},
                  {time: "10:20"},
                  {time: "10:40"},
                  {time: "11:00"},
                  {time: "11:20"},
                  {time: "11:40"},
                  {time: "12:00"},
                  {time: "12:20"},
                  {time: "12:40"},
                  {time: "13:00"},
                  {time: "13:20"},
                  {time: "13:40"},
                  {time: "14:00"},
                  {time: "14:20"},
                  {time: "14:40"},
                  {time: "15:00"},
                  {time: "15:20"},
                  {time: "15:40"},
                  {time: "16:00"},
                  {time: "16:20"},
                  {time: "16:40"},
                  {time: "17:00"},
                  {time: "17:20"},
                  {time: "17:40"},
                  {time: "18:00"},
                  {time: "18:20"},
                  {time: "18:40"},
                  {time: "19:00"},
                  {time: "19:20"},
                  {time: "19:40"},
                  {time: "20:00~"}])

# 30.times do |n|
#   name  = "test#{n+1}"
#   email = "test#{n+1}@example.com"
#   password = "password"
#   Patient.create!(name:  name,
#                   kana:  name,
#                   email: email,
#                   phone: "08012345678",
#                   birthday: '1996-12-23',
#                   age:      25,
#                   sex:      1,
#                   zip:  "1231234",
#                   address1: "東京都渋谷区渋谷",
#                   address2: "1-2-3")
# end