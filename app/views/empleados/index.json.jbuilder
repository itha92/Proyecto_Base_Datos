json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :identidad, :nombre, :direccion, :telefono, :celular, :sexo, :fecha_nac, :cargo, :is_active
  json.url empleado_url(empleado, format: :json)
end
