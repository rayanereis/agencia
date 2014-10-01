require 'rails_helper'

RSpec.describe "clientes/index", :type => :view do
  before(:each) do
    assign(:clientes, [
      Cliente.create!(
        :nome => "Nome",
        :sexo => "Sexo",
        :email => "Email",
        :login => "Login",
        :senha => "Senha"
      ),
      Cliente.create!(
        :nome => "Nome",
        :sexo => "Sexo",
        :email => "Email",
        :login => "Login",
        :senha => "Senha"
      )
    ])
  end

  it "renders a list of clientes" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Sexo".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    assert_select "tr>td", :text => "Senha".to_s, :count => 2
  end
end
