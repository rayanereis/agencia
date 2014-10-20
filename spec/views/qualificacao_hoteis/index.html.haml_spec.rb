require 'rails_helper'

RSpec.describe "qualificacao_hoteis/index", :type => :view do
  before(:each) do
    assign(:qualificacao_hoteis, [
      QualificacaoHotel.create!(
        :concretizado => false,
        :justificativa => 1,
        :nivel => 2,
        :comentario => "Comentario",
        :usuario => nil,
        :hotel => nil
      ),
      QualificacaoHotel.create!(
        :concretizado => false,
        :justificativa => 1,
        :nivel => 2,
        :comentario => "Comentario",
        :usuario => nil,
        :hotel => nil
      )
    ])
  end

  it "renders a list of qualificacao_hoteis" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Comentario".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
