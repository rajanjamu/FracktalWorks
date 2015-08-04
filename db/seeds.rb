# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: 'support@fracktal.in', password: 'Fra@Works', password_confirmation: 'Fra@Works')
Order.create!(title: 'Dheer', status: false)
Order.create!(title: 'Mihir', status: true, completed: DateTime.now)