require 'faker'

p "Clean the DB"

Restaurant.destroy_all

p "creating 10 new Restaurants"

10.times do
  Restaurant.create!(
    name: Faker::Coffee.blend_name,
    city: Faker::Address.city
    )
end

p "Finished!"
