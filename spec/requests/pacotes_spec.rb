require 'rails_helper'

RSpec.describe "Pacotes", :type => :request do
  describe "GET /pacotes" do
    it "works! (now write some real specs)" do
      get pacotes_path
      expect(response.status).to be(200)
    end
  end
end
