json.array!(@encomiendas) do |encomienda|
  json.extract! encomienda, :id, :destinatario, :remitente, :peso, :destino, :origen, :precio, :is_delivered, :is_shipped, :is_onhold, :fecha
  json.url encomienda_url(encomienda, format: :json)
end
