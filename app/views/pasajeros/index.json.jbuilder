json.array!(@pasajeros) do |pasajero|
  json.extract! pasajero, :id, :identidad, :nombre, :is_active
  json.url pasajero_url(pasajero, format: :json)
end
