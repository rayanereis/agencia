require 'rails_helper'

RSpec.describe "reservar_passagens/edit", :type => :view do
  before(:each) do
    @reservar_passagem = assign(:reservar_passagem, ReservarPassagem.create!(
      :data_partida => "MyString",
      :hora_partida => 1,
      :minuto_partida => 1,
      :origem => "MyString",
      :destino => "MyString",
      :valor_unitario => 1.5,
      :vagas_disponiveis => 1,
      :empresa_aerea => nil
    ))
  end

  it "renders the edit reservar_passagem form" do
    render

    assert_select "form[action=?][method=?]", reservar_passagem_path(@reservar_passagem), "post" do

      assert_select "input#reservar_passagem_data_partida[name=?]", "reservar_passagem[data_partida]"

      assert_select "input#reservar_passagem_hora_partida[name=?]", "reservar_passagem[hora_partida]"

      assert_select "input#reservar_passagem_minuto_partida[name=?]", "reservar_passagem[minuto_partida]"

      assert_select "input#reservar_passagem_origem[name=?]", "reservar_passagem[origem]"

      assert_select "input#reservar_passagem_destino[name=?]", "reservar_passagem[destino]"

      assert_select "input#reservar_passagem_valor_unitario[name=?]", "reservar_passagem[valor_unitario]"

      assert_select "input#reservar_passagem_vagas_disponiveis[name=?]", "reservar_passagem[vagas_disponiveis]"

      assert_select "input#reservar_passagem_empresa_aerea_id[name=?]", "reservar_passagem[empresa_aerea_id]"
    end
  end
end
