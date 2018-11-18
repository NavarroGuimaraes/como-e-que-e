# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tutorial = Tutorial.new()
tutorial.name = "Whatsapp"
tutorial.save()

for n in 0..5
  chapter = Chapter.new()
  chapter.tutorial_id = n
  chapter.number = 1
  chapter.save()
end

chapter = Chapter.new()
chapter.tutorial_id = 1
chapter.number = 2
chapter.save()