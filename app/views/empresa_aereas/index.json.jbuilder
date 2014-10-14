json.array!(@empresa_aereas) do |empresa_aerea|
  json.extract! empresa_aerea, :id, :nome, :cnpj, :email
  json.url empresa_aerea_url(empresa_aerea, format: :json)
end
