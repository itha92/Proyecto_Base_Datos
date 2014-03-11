json.array!(@autobuses) do |autobus|
  json.extract! autobus, :id, :marca, :modelo, :capacidad, :is_active
  json.url autobus_url(autobus, format: :json)
end
