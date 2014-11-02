class Place < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  CATEGORIES = {"NIRVANA" => 'Places where you get moksha', "FORBIDDEN FRUIT" => 'For sometimes you just can\'t get it', "ARTS AND HANDICRAFTS" => 'Explore the Indian heritage and culture from the depths', "MOUTH WATERING" => "Food who will die for", "SHUT UP AND TAKE MY MONEY" => "All those rare things that you can kill for.", "LOVE AT FIRST SITE" => "Apparels and accessories that are just too tempting."}
  URL = {"NIRVANA" => '/assets/nirvana.jpg', "FORBIDDEN FRUIT" => '/assets/product8_big.jpg', "ARTS AND HANDICRAFTS" => '/assets/ah.jpg', "MOUTH WATERING" => "/assets/product5_big.jpg", "SHUT UP AND TAKE MY MONEY" => "/assets/shutup.jpg", "LOVE AT FIRST SITE" => "/assets/tempting.jpg"}
  mount_uploader :image, PhotoUploader
  def date
  	created_at.strftime('%d %B %Y')
  end
end
