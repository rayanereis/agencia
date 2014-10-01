require 'rails_helper'

RSpec.describe "clientes/show", :type => :view do
  before(:each) do
    @cliente = assign(:cliente, Cliente.create!(
      :nome => "Nome",
      :sexo => "Sexo",
      :email => "Email",
      :login => "Login",
      :senha => "Senha"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Sexo/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Login/)
    expect(rendered).to match(/Senha/)
  end
end
