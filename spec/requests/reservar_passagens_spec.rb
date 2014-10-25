require 'rails_helper'

RSpec.describe "ReservarPassagens", :type => :request do
  describe "GET /reservar_passagens" do
    it "works! (now write some real specs)" do
      get reservar_passagens_path
      expect(response.status).to be(200)
    end
  end
end
