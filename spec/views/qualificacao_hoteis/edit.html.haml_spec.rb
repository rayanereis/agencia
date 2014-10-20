require 'rails_helper'

RSpec.describe "qualificacao_hoteis/edit", :type => :view do
  before(:each) do
    @qualificacao_hotel = assign(:qualificacao_hotel, QualificacaoHotel.create!(
      :concretizado => false,
      :justificativa => 1,
      :nivel => 1,
      :comentario => "MyString",
      :usuario => nil,
      :hotel => nil
    ))
  end

  it "renders the edit qualificacao_hotel form" do
    render

    assert_select "form[action=?][method=?]", qualificacao_hotel_path(@qualificacao_hotel), "post" do

      assert_select "input#qualificacao_hotel_concretizado[name=?]", "qualificacao_hotel[concretizado]"

      assert_select "input#qualificacao_hotel_justificativa[name=?]", "qualificacao_hotel[justificativa]"

      assert_select "input#qualificacao_hotel_nivel[name=?]", "qualificacao_hotel[nivel]"

      assert_select "input#qualificacao_hotel_comentario[name=?]", "qualificacao_hotel[comentario]"

      assert_select "input#qualificacao_hotel_usuario_id[name=?]", "qualificacao_hotel[usuario_id]"

      assert_select "input#qualificacao_hotel_hotel_id[name=?]", "qualificacao_hotel[hotel_id]"
    end
  end
end
