class EmpresaAereasController < InheritedResources::Base
def build_resource_params
        [params.fetch(:empresa_aerea, {}).permit(:nome, :cnpj, :email)]
  end
end
