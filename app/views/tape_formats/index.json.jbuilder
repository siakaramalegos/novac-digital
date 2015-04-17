json.array!(@tape_formats) do |tape_format|
  json.extract! tape_format, :id, :tape_format
  json.url tape_format_url(tape_format, format: :json)
end
