json.array!(@reservar_passagens) do |reservar_passagem|
  json.extract! reservar_passagem, :id, :data_partida, :hora_partida, :minuto_partida, :origem, :destino, :valor_unitario, :vagas_disponiveis, :empresa_aerea_id
  json.url reservar_passagem_url(reservar_passagem, format: :json)
end
