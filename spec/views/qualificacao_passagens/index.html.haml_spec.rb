require 'rails_helper'

RSpec.describe "qualificacao_passagens/index", :type => :view do
  before(:each) do
    assign(:qualificacao_passagens, [
      QualificacaoPassagem.create!(
        :concretizado => false,
        :justificativa => "Justificativa",
        :nivel => "Nivel",
        :comentario => "Comentario",
        :empresa_aerea => nil,
        :usuario => nil
      ),
      QualificacaoPassagem.create!(
        :concretizado => false,
        :justificativa => "Justificativa",
        :nivel => "Nivel",
        :comentario => "Comentario",
        :empresa_aerea => nil,
        :usuario => nil
      )
    ])
  end

  it "renders a list of qualificacao_passagens" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Justificativa".to_s, :count => 2
    assert_select "tr>td", :text => "Nivel".to_s, :count => 2
    assert_select "tr>td", :text => "Comentario".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
