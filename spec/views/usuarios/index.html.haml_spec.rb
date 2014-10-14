require 'rails_helper'

RSpec.describe "usuarios/index", :type => :view do
  before(:each) do
    assign(:usuarios, [
      Usuario.create!(
        :nome => "Nome",
        :email => "Email",
        :senha => "Senha"
      ),
      Usuario.create!(
        :nome => "Nome",
        :email => "Email",
        :senha => "Senha"
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Senha".to_s, :count => 2
  end
end
