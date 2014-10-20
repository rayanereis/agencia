json.array!(@qualificacao_hoteis) do |qualificacao_hotel|
  json.extract! qualificacao_hotel, :id, :concretizado, :justificativa, :nivel, :comentario, :usuario_id, :hotel_id
  json.url qualificacao_hotel_url(qualificacao_hotel, format: :json)
end
