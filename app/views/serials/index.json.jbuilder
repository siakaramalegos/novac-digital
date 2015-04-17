json.array!(@serials) do |serial|
  json.extract! serial, :id, :series_title
  json.url serial_url(serial, format: :json)
end
