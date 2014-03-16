json.array!(@asientos) do |asiento|
  json.extract! asiento, :id, :asiento_no, :tipo, :is_active
  json.url asiento_url(asiento, format: :json)
end
