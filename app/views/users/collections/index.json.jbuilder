json.array!(@users_collections) do |users_collection|
  json.extract! users_collection, :id, :title, :description
  json.url users_collection_url(users_collection, format: :json)
end
