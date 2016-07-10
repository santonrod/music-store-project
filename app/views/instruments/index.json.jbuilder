json.array!(@instruments) do |instrument|
  json.extract! instrument, :id, :category, :brand, :year, :details, :price, :owner_id
  json.url instrument_url(instrument, format: :json)
end
