# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |n|
  n=n+20
  id = n
  name = Faker::Pokemon.name
  email = n.to_s + "@a.a"
  password = "password"
  User.create!(
    id: id, name: name,
               email: email,
               password: password,
               password_confirmation: password,
               )
end

10.times do |n|
  title = Faker::Job.title
  content = Faker::Movie.quote
  user_id= n +20
  Blog.create!(title: title,
               content: content,
               user_id: user_id,
               )
end
