# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.create([
  { username: "Anh Tuan", first_name: "Tuan", last_name: "Truong", email: "tuanchibi@gmail.com", password: "password"},
  { username: "Thu Ha", first_name: "Ha", last_name: "Dinh", email: "dinhthithuha@gmail.com", password: "password"},
  { username: "Tai Cong", first_name: "Cong", last_name: "Vu", email: "taicong@gmail.com", password: "password"},
  { username: "Thanh Hai", first_name: "Hai", last_name: "Dinh", email: "thanhhai@gmail.com", password: "password"},
  { username: "Sy Trung", first_name: "Trung", last_name: "Nghiem", email: "sytrung@gmail.com", password: "password"},
])