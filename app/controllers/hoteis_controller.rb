class HoteisController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:hotel, {}).permit(:nome, :cnpj, :email)]
  end
end
