# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = Workout.create(title: "Leg Workout", date: 2017-12-22, type: "strength", duration: "1 hour")
b = Workout.create(title: "Elliptical Workout", date: 2017-12-24, type: "cardio", duration: "30 mins")
c = Workout.create(title: "Kettlebell Workout", date: 2017-12-26, type: "strength", duration: "20 mins")