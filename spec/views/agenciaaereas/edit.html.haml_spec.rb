require 'rails_helper'

RSpec.describe "agenciaaereas/edit", :type => :view do
  before(:each) do
    @agenciaaerea = assign(:agenciaaerea, Agenciaaerea.create!(
      :nome => "MyString",
      :cnpj => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit agenciaaerea form" do
    render

    assert_select "form[action=?][method=?]", agenciaaerea_path(@agenciaaerea), "post" do

      assert_select "input#agenciaaerea_nome[name=?]", "agenciaaerea[nome]"

      assert_select "input#agenciaaerea_cnpj[name=?]", "agenciaaerea[cnpj]"

      assert_select "input#agenciaaerea_email[name=?]", "agenciaaerea[email]"
    end
  end
end
