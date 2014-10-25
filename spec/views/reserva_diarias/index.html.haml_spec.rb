require 'rails_helper'

RSpec.describe "reserva_diarias/index", :type => :view do
  before(:each) do
    assign(:reserva_diarias, [
      ReservaDiaria.create!(
        :periodo_inicial => "Periodo_inicial",
        :periodo_final => "Periodo_final",
        :valor_unitario => "Valor_unitario",
        :vagas_disponiveis => "Vagas_disponiveis",
        :hotel => nil
      ),
      ReservaDiaria.create!(
        :periodo_inicial => "Periodo_inicial",
        :periodo_final => "Periodo_final",
        :valor_unitario => "Valor_unitario",
        :vagas_disponiveis => "Vagas_disponiveis",
        :hotel => nil
      )
    ])
  end

  it "renders a list of reserva_diarias" do
    render
    assert_select "tr>td", :text => "Periodo_inicial".to_s, :count => 2
    assert_select "tr>td", :text => "Periodo_final".to_s, :count => 2
    assert_select "tr>td", :text => "Valor_unitario".to_s, :count => 2
    assert_select "tr>td", :text => "Vagas_disponiveis".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
