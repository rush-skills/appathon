# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
100.times { |i| 
	begin
		Place.create!(title: "Place #{i}", description: BetterLorem.c(200, false, false), address: BetterLorem.c(100, false, false), remote_image_url: "http://lorempixel.com/1280/720/", category: Place::CATEGORIES.keys.sample, user_id: 1)
	rescue
		retry
	end
}
place = Place.all
500.times { |i| 
	begin
		Review.create!(user_id: 1, place_id: place.sample,description: BetterLorem.c(200, false, false),stars: (1+rand(5)), remote_image_url: "http://lorempixel.com/1280/720/")
	rescue
		retry
	end
}