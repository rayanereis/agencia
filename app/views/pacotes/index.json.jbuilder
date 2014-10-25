json.array!(@pacotes) do |pacote|
  json.extract! pacote, :id, :destino, :quantidadepessoas, :total, :usuario_id, :reservar_passagem_id, :reserva_diaria_id
  json.url pacote_url(pacote, format: :json)
end
