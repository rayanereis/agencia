require 'rails_helper'

RSpec.describe "Clientes", :type => :request do
  describe "GET /clientes" do
    it "works! (now write some real specs)" do
      get clientes_path
      expect(response.status).to be(200)
    end
  end
end
