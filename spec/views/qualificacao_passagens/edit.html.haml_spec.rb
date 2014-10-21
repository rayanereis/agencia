require 'rails_helper'

RSpec.describe "qualificacao_passagens/edit", :type => :view do
  before(:each) do
    @qualificacao_passagem = assign(:qualificacao_passagem, QualificacaoPassagem.create!(
      :concretizado => false,
      :justificativa => "MyString",
      :nivel => "MyString",
      :comentario => "MyString",
      :empresa_aerea => nil,
      :usuario => nil
    ))
  end

  it "renders the edit qualificacao_passagem form" do
    render

    assert_select "form[action=?][method=?]", qualificacao_passagem_path(@qualificacao_passagem), "post" do

      assert_select "input#qualificacao_passagem_concretizado[name=?]", "qualificacao_passagem[concretizado]"

      assert_select "input#qualificacao_passagem_justificativa[name=?]", "qualificacao_passagem[justificativa]"

      assert_select "input#qualificacao_passagem_nivel[name=?]", "qualificacao_passagem[nivel]"

      assert_select "input#qualificacao_passagem_comentario[name=?]", "qualificacao_passagem[comentario]"

      assert_select "input#qualificacao_passagem_empresa_aerea_id[name=?]", "qualificacao_passagem[empresa_aerea_id]"

      assert_select "input#qualificacao_passagem_usuario_id[name=?]", "qualificacao_passagem[usuario_id]"
    end
  end
end
