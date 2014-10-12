json.array!(@agenciaaereas) do |agenciaaerea|
  json.extract! agenciaaerea, :id, :nome, :cnpj, :email
  json.url agenciaaerea_url(agenciaaerea, format: :json)
end
