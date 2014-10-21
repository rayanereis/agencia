require 'rails_helper'

RSpec.describe "qualificacao_passagens/new", :type => :view do
  before(:each) do
    assign(:qualificacao_passagem, QualificacaoPassagem.new(
      :concretizado => false,
      :justificativa => "MyString",
      :nivel => "MyString",
      :comentario => "MyString",
      :empresa_aerea => nil,
      :usuario => nil
    ))
  end

  it "renders new qualificacao_passagem form" do
    render

    assert_select "form[action=?][method=?]", qualificacao_passagens_path, "post" do

      assert_select "input#qualificacao_passagem_concretizado[name=?]", "qualificacao_passagem[concretizado]"

      assert_select "input#qualificacao_passagem_justificativa[name=?]", "qualificacao_passagem[justificativa]"

      assert_select "input#qualificacao_passagem_nivel[name=?]", "qualificacao_passagem[nivel]"

      assert_select "input#qualificacao_passagem_comentario[name=?]", "qualificacao_passagem[comentario]"

      assert_select "input#qualificacao_passagem_empresa_aerea_id[name=?]", "qualificacao_passagem[empresa_aerea_id]"

      assert_select "input#qualificacao_passagem_usuario_id[name=?]", "qualificacao_passagem[usuario_id]"
    end
  end
end
