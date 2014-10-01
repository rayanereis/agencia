json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :sexo, :email, :login, :senha
  json.url cliente_url(cliente, format: :json)
end
