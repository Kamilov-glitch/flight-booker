# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


airports = Airport.create([{ name: "NYC" }, { name: "GYD" }, { name: "IST" }, { name: "SFO" } ])
Flight.create( arrival_airport: airports.first, departure_airport: airports.last, date: DateTime.parse("2021-12-26T04:00:00"), duration: "6 hours")
Flight.create( arrival_airport: airports.first, departure_airport: airports.second, date: DateTime.parse("2021-12-26T21:00:00"), duration: "18 hours")
Flight.create( arrival_airport: airports.first, departure_airport: airports.last, date: DateTime.parse("2021-12-26T15:00:00"), duration: "16 hours")
