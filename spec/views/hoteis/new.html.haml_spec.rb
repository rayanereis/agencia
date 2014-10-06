require 'rails_helper'

RSpec.describe "hoteis/new", :type => :view do
  before(:each) do
    assign(:hotel, Hotel.new(
      :nome => "MyString",
      :cnpj => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new hotel form" do
    render

    assert_select "form[action=?][method=?]", hoteis_path, "post" do

      assert_select "input#hotel_nome[name=?]", "hotel[nome]"

      assert_select "input#hotel_cnpj[name=?]", "hotel[cnpj]"

      assert_select "input#hotel_email[name=?]", "hotel[email]"
    end
  end
end
