json.array!(@boletos) do |boleto|
  json.extract! boleto, :id, :fecha, :descuento, :subtotal, :total
  json.url boleto_url(boleto, format: :json)
end
