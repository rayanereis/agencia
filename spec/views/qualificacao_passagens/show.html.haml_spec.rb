require 'rails_helper'

RSpec.describe "qualificacao_passagens/show", :type => :view do
  before(:each) do
    @qualificacao_passagem = assign(:qualificacao_passagem, QualificacaoPassagem.create!(
      :concretizado => false,
      :justificativa => "Justificativa",
      :nivel => "Nivel",
      :comentario => "Comentario",
      :empresa_aerea => nil,
      :usuario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Justificativa/)
    expect(rendered).to match(/Nivel/)
    expect(rendered).to match(/Comentario/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
