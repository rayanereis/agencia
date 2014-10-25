json.array!(@reserva_diarias) do |reserva_diaria|
  json.extract! reserva_diaria, :id, :periodo_inicial, :periodo_final, :valor_unitario, :vagas_disponiveis, :hotel_id
  json.url reserva_diaria_url(reserva_diaria, format: :json)
end
