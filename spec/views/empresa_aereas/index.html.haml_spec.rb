require 'rails_helper'

RSpec.describe "empresa_aereas/index", :type => :view do
  before(:each) do
    assign(:empresa_aereas, [
      EmpresaAerea.create!(
        :nome => "Nome",
        :cnpj => "Cnpj",
        :email => "Email"
      ),
      EmpresaAerea.create!(
        :nome => "Nome",
        :cnpj => "Cnpj",
        :email => "Email"
      )
    ])
  end

  it "renders a list of empresa_aereas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
