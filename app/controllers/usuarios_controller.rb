class UsuariosController < InheritedResources::Base
def build_resource_params
        [params.fetch(:usuario, {}).permit(:nome, :email, :senha)]
  end
end
