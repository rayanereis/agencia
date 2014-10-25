require 'rails_helper'

RSpec.describe "reserva_diarias/show", :type => :view do
  before(:each) do
    @reserva_diaria = assign(:reserva_diaria, ReservaDiaria.create!(
      :periodo_inicial => "Periodo_inicial",
      :periodo_final => "Periodo_final",
      :valor_unitario => "Valor_unitario",
      :vagas_disponiveis => "Vagas_disponiveis",
      :hotel => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Periodo_inicial/)
    expect(rendered).to match(/Periodo_final/)
    expect(rendered).to match(/Valor_unitario/)
    expect(rendered).to match(/Vagas_disponiveis/)
    expect(rendered).to match(//)
  end
end
