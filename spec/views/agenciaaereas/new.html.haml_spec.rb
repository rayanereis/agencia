require 'rails_helper'

RSpec.describe "agenciaaereas/new", :type => :view do
  before(:each) do
    assign(:agenciaaerea, Agenciaaerea.new(
      :nome => "MyString",
      :cnpj => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new agenciaaerea form" do
    render

    assert_select "form[action=?][method=?]", agenciaaereas_path, "post" do

      assert_select "input#agenciaaerea_nome[name=?]", "agenciaaerea[nome]"

      assert_select "input#agenciaaerea_cnpj[name=?]", "agenciaaerea[cnpj]"

      assert_select "input#agenciaaerea_email[name=?]", "agenciaaerea[email]"
    end
  end
end
