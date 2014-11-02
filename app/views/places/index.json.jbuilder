json.array!(@places) do |place|
  json.extract! place, :id, :title, :description, :user_id, :address, :image, :category
  json.reviews place.reviews,  :user_id, :place_id, :description, :stars
  json.url place_url(place, format: :json)

end
