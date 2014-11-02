json.array!(@reviews) do |review|
  json.extract! review, :id, :user_id, :place_id, :description, :stars, :image
  json.url review_url(review, format: :json)
end
