json.array!(@itinerarios) do |itinerario|
  json.extract! itinerario, :id, :destino, :origen, :fecha, :hora_salida
  json.url itinerario_url(itinerario, format: :json)
end
