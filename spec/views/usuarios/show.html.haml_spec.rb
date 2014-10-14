require 'rails_helper'

RSpec.describe "usuarios/show", :type => :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      :nome => "Nome",
      :email => "Email",
      :senha => "Senha"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Senha/)
  end
end
