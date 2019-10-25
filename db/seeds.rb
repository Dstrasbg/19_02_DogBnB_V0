require 'faker'

City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all

cities = []
dogs = []
dogsitters = []
stroll = []

25.times do |x|
	city = City.create(
	city_name: Faker::Address.city)
	cities << city
end

puts "Seeding done"

40.times do |x|
		dog = Dog.create(
		name: Faker::Name.first_name,
		race: Faker::Creature::Dog.breed,
		age: rand(0..20),
		city_id: cities[rand(0..29)].id)
		dogs << dog
end 
puts "Seedind done"


10.times do |x|
		dogsitter = Dogsitter.create(
		name: Faker::Name.first_name,
		experience: ["Senior","Intermediate","Junior"].sample,
		city_id: cities[rand(0..29)].id)
		dogsitters << dogsitter
end 
puts "Seeding done"


t1 = Time.parse("2019-10-25 14:40:34")
t2 = Time.parse("2021-12-23 00:00:00")

50.times do |x|
	Stroll.create(
		date: rand(t1..t2),
		city_id: cities[rand(0..29)].id,
		dog_id: dogs[rand(0..29)].id,
		dogsitter_id: dogsitters[rand(0..29)].id)
end

puts "Seeding done"