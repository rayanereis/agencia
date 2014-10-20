class QualificacaoHoteisController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:qualificacao_hotel, {}).permit(:concretizado, :justificativa, :nivel,:comentario, :usuario_id, :hotel_id)]
  end
end
