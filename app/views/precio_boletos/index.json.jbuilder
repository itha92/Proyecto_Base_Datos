json.array!(@precio_boletos) do |precio_boleto|
  json.extract! precio_boleto, :id, :precio, :origen, :destino, :clase
  json.url precio_boleto_url(precio_boleto, format: :json)
end
