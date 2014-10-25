require 'rails_helper'

RSpec.describe "pacotes/index", :type => :view do
  before(:each) do
    assign(:pacotes, [
      Pacote.create!(
        :destino => "Destino",
        :quantidadepessoas => 1,
        :total => 1.5,
        :usuario => nil,
        :reservar_passagem => nil,
        :reserva_diaria => nil
      ),
      Pacote.create!(
        :destino => "Destino",
        :quantidadepessoas => 1,
        :total => 1.5,
        :usuario => nil,
        :reservar_passagem => nil,
        :reserva_diaria => nil
      )
    ])
  end

  it "renders a list of pacotes" do
    render
    assert_select "tr>td", :text => "Destino".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
