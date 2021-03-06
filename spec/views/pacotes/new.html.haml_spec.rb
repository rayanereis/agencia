require 'rails_helper'

RSpec.describe "pacotes/new", :type => :view do
  before(:each) do
    assign(:pacote, Pacote.new(
      :destino => "MyString",
      :quantidadepessoas => 1,
      :total => 1.5,
      :usuario => nil,
      :reservar_passagem => nil,
      :reserva_diaria => nil
    ))
  end

  it "renders new pacote form" do
    render

    assert_select "form[action=?][method=?]", pacotes_path, "post" do

      assert_select "input#pacote_destino[name=?]", "pacote[destino]"

      assert_select "input#pacote_quantidadepessoas[name=?]", "pacote[quantidadepessoas]"

      assert_select "input#pacote_total[name=?]", "pacote[total]"

      assert_select "input#pacote_usuario_id[name=?]", "pacote[usuario_id]"

      assert_select "input#pacote_reservar_passagem_id[name=?]", "pacote[reservar_passagem_id]"

      assert_select "input#pacote_reserva_diaria_id[name=?]", "pacote[reserva_diaria_id]"
    end
  end
end
