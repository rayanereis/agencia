require 'rails_helper'

RSpec.describe "empresa_aereas/show", :type => :view do
  before(:each) do
    @empresa_aerea = assign(:empresa_aerea, EmpresaAerea.create!(
      :nome => "Nome",
      :cnpj => "Cnpj",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Cnpj/)
    expect(rendered).to match(/Email/)
  end
end
