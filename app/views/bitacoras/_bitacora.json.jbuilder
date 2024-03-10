json.extract! bitacora, :id, :numero_semana, :fecha, :alumno, :profesor, :registro, :acuerdos, :created_at, :updated_at
json.url bitacora_url(bitacora, format: :json)
