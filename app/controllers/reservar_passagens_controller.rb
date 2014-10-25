class ReservarPassagensController < InheritedResources::Base
def build_resource_params
        [params.fetch(:reservar_passagem, {}).permit(:data_partida, :hora_partida, :minuto_partida, :origem, :destino, :valor_unitario, :vagas_disponiveis, :empresa_aerea_id)]
  end


end
