require 'rails_helper'

RSpec.describe "EmpresaAereas", :type => :request do
  describe "GET /empresa_aereas" do
    it "works! (now write some real specs)" do
      get empresa_aereas_path
      expect(response.status).to be(200)
    end
  end
end
