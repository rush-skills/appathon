# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
100.times { |i| Place.create!(title: "Place #{i}", description: BetterLorem.c(200, false, false), address: BetterLorem.c(100, false, false), remote_image_url: "http://thuthuat365.com/wp-content/uploads/2014/08/photo_default_0.png", category: Place::CATEGORIES.keys.sample, user_id: 1)}