require 'rails_helper'

RSpec.describe "clientes/edit", :type => :view do
  before(:each) do
    @cliente = assign(:cliente, Cliente.create!(
      :nome => "MyString",
      :sexo => "MyString",
      :email => "MyString",
      :login => "MyString",
      :senha => "MyString"
    ))
  end

  it "renders the edit cliente form" do
    render

    assert_select "form[action=?][method=?]", cliente_path(@cliente), "post" do

      assert_select "input#cliente_nome[name=?]", "cliente[nome]"

      assert_select "input#cliente_sexo[name=?]", "cliente[sexo]"

      assert_select "input#cliente_email[name=?]", "cliente[email]"

      assert_select "input#cliente_login[name=?]", "cliente[login]"

      assert_select "input#cliente_senha[name=?]", "cliente[senha]"
    end
  end
end
