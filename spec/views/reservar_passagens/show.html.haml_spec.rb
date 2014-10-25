require 'rails_helper'

RSpec.describe "reservar_passagens/show", :type => :view do
  before(:each) do
    @reservar_passagem = assign(:reservar_passagem, ReservarPassagem.create!(
      :data_partida => "Data_partida",
      :hora_partida => 1,
      :minuto_partida => 2,
      :origem => "Origem",
      :destino => "Destino",
      :valor_unitario => 1.5,
      :vagas_disponiveis => 3,
      :empresa_aerea => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Data_partida/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Origem/)
    expect(rendered).to match(/Destino/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
