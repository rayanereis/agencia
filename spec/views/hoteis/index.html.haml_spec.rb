require 'rails_helper'

RSpec.describe "hoteis/index", :type => :view do
  before(:each) do
    assign(:hoteis, [
      Hotel.create!(
        :nome => "Nome",
        :cnpj => "Cnpj",
        :email => "Email"
      ),
      Hotel.create!(
        :nome => "Nome",
        :cnpj => "Cnpj",
        :email => "Email"
      )
    ])
  end

  it "renders a list of hoteis" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
