require 'rails_helper'

RSpec.describe "empresa_aereas/new", :type => :view do
  before(:each) do
    assign(:empresa_aerea, EmpresaAerea.new(
      :nome => "MyString",
      :cnpj => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new empresa_aerea form" do
    render

    assert_select "form[action=?][method=?]", empresa_aereas_path, "post" do

      assert_select "input#empresa_aerea_nome[name=?]", "empresa_aerea[nome]"

      assert_select "input#empresa_aerea_cnpj[name=?]", "empresa_aerea[cnpj]"

      assert_select "input#empresa_aerea_email[name=?]", "empresa_aerea[email]"
    end
  end
end
