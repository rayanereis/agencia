# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :qualificacao_hotel do
    concretizado false
    justificativa 1
    nivel 1
    comentario "MyString"
    usuario nil
    hotel nil
  end
end
