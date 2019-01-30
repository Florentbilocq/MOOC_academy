# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Course.destroy_all
User.destroy_all
Lesson.destroy_all

#Crée 10 cours random
10.times do
  course = Course.create!(title: Faker::ProgrammingLanguage.name, description: Faker::ProgrammingLanguage.creator)
end

#Crée 40 utilisateurs random et leur attribue un cours
40.times do
  user = User.create!(name: Faker::Pokemon.name, password: Faker::Internet.password, course: Course.find(rand(1..10)))
end

#Crée 50 leçons random et leur attribue un cours
50.times do
  lesson = Lesson.create!(body: Faker::BreakingBad.episode, course: Course.find(rand(1..10)))
end
