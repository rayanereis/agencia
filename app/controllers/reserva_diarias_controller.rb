class ReservaDiariasController < InheritedResources::Base
def build_resource_params
        [params.fetch(:reserva_diaria, {}).permit(:periodo_inicial, :periodo_final, :valor_unitario, :vagas_disponiveis,:hotel_id)]
  end

end


