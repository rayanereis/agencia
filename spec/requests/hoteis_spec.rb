require 'rails_helper'

RSpec.describe "Hoteis", :type => :request do
  describe "GET /hoteis" do
    it "works! (now write some real specs)" do
      get hoteis_path
      expect(response.status).to be(200)
    end
  end
end
