# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reserva_diaria do
    periodo_inicial "MyString"
    periodo_final "MyString"
    valor_unitario "MyString"
    vagas_disponiveis "MyString"
    hotel nil
  end
end
