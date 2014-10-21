# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :qualificacao_passagem do
    concretizado false
    justificativa "MyString"
    nivel "MyString"
    comentario "MyString"
    empresa_aerea nil
    usuario nil
  end
end
