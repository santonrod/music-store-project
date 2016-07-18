json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :name, :email, :phone, :location, :pickup, :instrument_id
  json.url appointment_url(appointment, format: :json)
end
