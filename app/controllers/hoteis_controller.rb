class HoteisController < InheritedResources::Base
<<<<<<< HEAD
  def build_resource_params
        [params.fetch(:hotel, {}).permit(:nome, :cnpj, :email)]
  end

=======
>>>>>>> 61d0dae675cc3e5bc45753a03ac3ff1e296511a9
end
