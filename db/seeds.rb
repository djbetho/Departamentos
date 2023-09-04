# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require 'csv'

# csv_file_path = Rails.root.join('db', 'chilean_cities.csv')

# CSV.foreach(csv_file_path) do |row|
#   city_name = row[0]
#   City.create(name: city_name)
# end

# Characteristic.create(name: 'Piscina')
# Characteristic.create(name: 'Quincho')
# Characteristic.create(name: 'Cancha Padel')


Person.create( name: "Administrador", 
               email: 'ru.bugueno@gmail.com',
               password: '123456',
               password_confirmation: '123456',
               role:2)
               
Person.create( name: "concerje", 
               email: 'concerje@gmail.com',
               password: '123456',
               password_confirmation: '123456',
               role:1)
Person.create( name: "usuario", 
               email: 'usuario@gmail.com',
               password: '123456',
               password_confirmation: '123456',
               role:0)