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

Exercise.create(name: "kettlebell swing", reps: 10, sets: 4, weight: 25, workout_id: c.id)
Exercise.create(name: "squats", reps: 12, sets: 4, weight: 90, workout_id: a.id)
Exercise.create(name: "deadlifts", reps: 13, sets: 3, weight: 100, workout_id: a.id)