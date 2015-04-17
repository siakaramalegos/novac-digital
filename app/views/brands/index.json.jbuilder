json.array!(@brands) do |brand|
  json.extract! brand, :id, :brand
  json.url brand_url(brand, format: :json)
end
