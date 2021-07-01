# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
colors = ["red", "brown", "yellow", "orange", "spotty", "persian", "blonde"]
sexs = ["M", "F"]
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do Cat.create!(name: Faker::Name.name, birth_date: Faker::Date.backward(days: 4000), color: colors.sample, sex: sexs.sample)

end

User.create!(username: "Kennyloggins", password: "123456")
