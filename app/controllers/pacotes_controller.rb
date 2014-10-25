class PacotesController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:pacote, {}).permit(:destino, :quantidadepessoas, :total,:usuario_id, :reservar_passagem_id, :reserva_diaria_id)]
  end
end

