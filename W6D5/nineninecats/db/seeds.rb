# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all
#cats
cat1 = Cat.create!({name: 'Readymade', birth_date: "2016-06-23", color: 'Black', sex: 'M', description: 'My name is Readymade!'})
cat2 = Cat.create!({name: 'Cleanse', birth_date: "2017-12-19", color: 'Orange', sex: 'F', description: 'My name is Cleanse!'})
cat3 = Cat.create!({name: 'Literally', birth_date: "2012-02-21", color: 'Orange', sex: 'M', description: 'My name is Orange!'})
cat4 = Cat.create!({name: 'Tacos', birth_date: "2020-06-11", color: 'Orange', sex: 'F', description: 'My name is Tacos!'})