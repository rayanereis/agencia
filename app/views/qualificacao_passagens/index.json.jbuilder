json.array!(@qualificacao_passagens) do |qualificacao_passagem|
  json.extract! qualificacao_passagem, :id, :concretizado, :justificativa, :nivel, :comentario, :empresa_aerea_id, :usuario_id
  json.url qualificacao_passagem_url(qualificacao_passagem, format: :json)
end
