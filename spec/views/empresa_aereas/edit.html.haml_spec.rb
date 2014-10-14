require 'rails_helper'

RSpec.describe "empresa_aereas/edit", :type => :view do
  before(:each) do
    @empresa_aerea = assign(:empresa_aerea, EmpresaAerea.create!(
      :nome => "MyString",
      :cnpj => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit empresa_aerea form" do
    render

    assert_select "form[action=?][method=?]", empresa_aerea_path(@empresa_aerea), "post" do

      assert_select "input#empresa_aerea_nome[name=?]", "empresa_aerea[nome]"

      assert_select "input#empresa_aerea_cnpj[name=?]", "empresa_aerea[cnpj]"

      assert_select "input#empresa_aerea_email[name=?]", "empresa_aerea[email]"
    end
  end
end
