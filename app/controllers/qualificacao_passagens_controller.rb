class QualificacaoPassagensController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:qualificacao_passagem, {}).permit(:concretizado, :justificativa, :nivel,:comentario, :usuario_id, :empresa_aerea_id)]
  end
end
