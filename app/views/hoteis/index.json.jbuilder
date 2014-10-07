json.array!(@hoteis) do |hotel|
  json.extract! hotel, :id, :nome, :cnpj, :email
  json.url hotel_url(hotel, format: :json)
end
