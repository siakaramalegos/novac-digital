json.array!(@formats) do |format|
  json.extract! format, :id, :tape_format
  json.url format_url(format, format: :json)
end
