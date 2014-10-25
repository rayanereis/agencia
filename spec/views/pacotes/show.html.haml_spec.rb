require 'rails_helper'

RSpec.describe "pacotes/show", :type => :view do
  before(:each) do
    @pacote = assign(:pacote, Pacote.create!(
      :destino => "Destino",
      :quantidadepessoas => 1,
      :total => 1.5,
      :usuario => nil,
      :reservar_passagem => nil,
      :reserva_diaria => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Destino/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
