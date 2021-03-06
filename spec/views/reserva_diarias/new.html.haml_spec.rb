require 'rails_helper'

RSpec.describe "reserva_diarias/new", :type => :view do
  before(:each) do
    assign(:reserva_diaria, ReservaDiaria.new(
      :periodo_inicial => "MyString",
      :periodo_final => "MyString",
      :valor_unitario => "MyString",
      :vagas_disponiveis => "MyString",
      :hotel => nil
    ))
  end

  it "renders new reserva_diaria form" do
    render

    assert_select "form[action=?][method=?]", reserva_diarias_path, "post" do

      assert_select "input#reserva_diaria_periodo_inicial[name=?]", "reserva_diaria[periodo_inicial]"

      assert_select "input#reserva_diaria_periodo_final[name=?]", "reserva_diaria[periodo_final]"

      assert_select "input#reserva_diaria_valor_unitario[name=?]", "reserva_diaria[valor_unitario]"

      assert_select "input#reserva_diaria_vagas_disponiveis[name=?]", "reserva_diaria[vagas_disponiveis]"

      assert_select "input#reserva_diaria_hotel_id[name=?]", "reserva_diaria[hotel_id]"
    end
  end
end
