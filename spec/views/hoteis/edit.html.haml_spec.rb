require 'rails_helper'

RSpec.describe "hoteis/edit", :type => :view do
  before(:each) do
    @hotel = assign(:hotel, Hotel.create!(
      :nome => "MyString",
      :cnpj => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit hotel form" do
    render

    assert_select "form[action=?][method=?]", hotel_path(@hotel), "post" do

      assert_select "input#hotel_nome[name=?]", "hotel[nome]"

      assert_select "input#hotel_cnpj[name=?]", "hotel[cnpj]"

      assert_select "input#hotel_email[name=?]", "hotel[email]"
    end
  end
end
