json.array!(@conditions) do |condition|
  json.extract! condition, :id, :condition, :description
  json.url condition_url(condition, format: :json)
end
