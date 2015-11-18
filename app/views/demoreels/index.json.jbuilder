json.array!(@demoreels) do |demoreel|
  json.extract! demoreel, :id, :title, :link
  json.url demoreel_url(demoreel, format: :json)
end
