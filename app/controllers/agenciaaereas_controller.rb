class AgenciaaereasController < InheritedResources::Base
	 def build_resource_params
        [params.fetch(:agenciaaerea, {}).permit(:nome, :cnpj, :email)]
  end
end
