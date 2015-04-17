json.array!(@owners) do |owner|
  json.extract! owner, :id, :owner_name, :contact_name, :contact_email, :contact_phone
  json.url owner_url(owner, format: :json)
end
