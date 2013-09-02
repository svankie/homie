json.array!(@dudes) do |dude|
  json.extract! dude, :name, :bio, :picture, :activity, :neighborhood_preference, :email, :phone
  json.url dude_url(dude, format: :json)
end
