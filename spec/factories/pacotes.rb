# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pacote do
    destino "MyString"
    quantidadepessoas 1
    total 1.5
    usuario nil
    reservar_passagem nil
    reserva_diaria nil
  end
end
