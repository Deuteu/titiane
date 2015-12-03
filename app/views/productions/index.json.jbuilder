json.array!(@productions) do |production|
  json.extract! production, :id, :year, :order, :title, :realisation, :link
  json.url production_url(production, format: :json)
end
