require 'rails_helper'

RSpec.describe "ReservaDiarias", :type => :request do
  describe "GET /reserva_diarias" do
    it "works! (now write some real specs)" do
      get reserva_diarias_path
      expect(response.status).to be(200)
    end
  end
end
