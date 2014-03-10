json.array!(@mantenimientos) do |mantenimiento|
  json.extract! mantenimiento, :id, :fecha, :observacion, :kilometraje, :costo
  json.url mantenimiento_url(mantenimiento, format: :json)
end
