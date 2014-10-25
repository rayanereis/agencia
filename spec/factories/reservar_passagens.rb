# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reservar_passagem do
    data_partida "MyString"
    hora_partida 1
    minuto_partida 1
    origem "MyString"
    destino "MyString"
    valor_unitario 1.5
    vagas_disponiveis 1
    empresa_aerea nil
  end
end
