json.array!(@precio_paquetes) do |precio_paquete|
  json.extract! precio_paquete, :id, :tipo_paquete, :costo
  json.url precio_paquete_url(precio_paquete, format: :json)
end
