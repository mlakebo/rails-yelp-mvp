# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

7.times do
  funky_names = [
    "#{Faker::Color.color_name.capitalize} #{Faker::Space.planet.capitalize}",
    "#{Faker::Name.prefix} #{Faker::Food.measurement}",
    "#{Faker::Food.spice.capitalize} & #{Faker::Space.planet.capitalize}",
    "#{Faker::Color.color_name.capitalize} #{Faker::Beer.hop.capitalize}",
    "#{Faker::Food.ingredient.capitalize} #{Faker::Address.city_suffix.capitalize}",
    "#{Faker::Color.color_name.capitalize} #{Faker::Address.city_prefix.capitalize}",
  ]
  new_resto = Restaurant.create(
    name: funky_names.sample,
    address: "#{Faker::Name.last_name} #{Faker::Address.street_suffix}",
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )

  (1..4).to_a.sample.times do
    Review.create(
      content: Faker::TwinPeaks.quote,
      rating: (0..5).to_a.sample,
      restaurant_id: new_resto.id
      )
  end
end

# Restaurant.delete_all
# Review.delete_all
