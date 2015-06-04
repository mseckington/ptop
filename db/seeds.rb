# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

animals = ['hedgehog',
  'squirrel',
  'goat',
  'dog',
  'cat',
  'cow'
]

6.times do |i|
  6.times do |j|
    image_url = "/animal-#{i+1}"
    Question.create([
      { image: image_url, description: "Is this a #{animals[j]}?"}
    ])
  end
end


