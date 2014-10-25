require 'rails_helper'

RSpec.describe "reservar_passagens/index", :type => :view do
  before(:each) do
    assign(:reservar_passagens, [
      ReservarPassagem.create!(
        :data_partida => "Data_partida",
        :hora_partida => 1,
        :minuto_partida => 2,
        :origem => "Origem",
        :destino => "Destino",
        :valor_unitario => 1.5,
        :vagas_disponiveis => 3,
        :empresa_aerea => nil
      ),
      ReservarPassagem.create!(
        :data_partida => "Data_partida",
        :hora_partida => 1,
        :minuto_partida => 2,
        :origem => "Origem",
        :destino => "Destino",
        :valor_unitario => 1.5,
        :vagas_disponiveis => 3,
        :empresa_aerea => nil
      )
    ])
  end

  it "renders a list of reservar_passagens" do
    render
    assert_select "tr>td", :text => "Data_partida".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Origem".to_s, :count => 2
    assert_select "tr>td", :text => "Destino".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
