require 'rails_helper'

RSpec.describe "qualificacao_hoteis/show", :type => :view do
  before(:each) do
    @qualificacao_hotel = assign(:qualificacao_hotel, QualificacaoHotel.create!(
      :concretizado => false,
      :justificativa => 1,
      :nivel => 2,
      :comentario => "Comentario",
      :usuario => nil,
      :hotel => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Comentario/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
