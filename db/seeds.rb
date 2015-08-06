# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: "Admin",email: 'support@fracktal.in', password: 'Fra@Works', password_confirmation: 'Fra@Works')
User.create!(name: "Rajan",email: 'rajan@fracktal.in', password: 'Fra@Works', password_confirmation: 'Fra@Works')

Order.create!(title: 'Dheer', status: false, user_id: 1)
Order.create!(title: 'Mihir', status: true, user_id: 1, completed: DateTime.now)