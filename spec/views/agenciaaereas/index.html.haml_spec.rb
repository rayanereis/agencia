require 'rails_helper'

RSpec.describe "agenciaaereas/index", :type => :view do
  before(:each) do
    assign(:agenciaaereas, [
      Agenciaaerea.create!(
        :nome => "Nome",
        :cnpj => "Cnpj",
        :email => "Email"
      ),
      Agenciaaerea.create!(
        :nome => "Nome",
        :cnpj => "Cnpj",
        :email => "Email"
      )
    ])
  end

  it "renders a list of agenciaaereas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
