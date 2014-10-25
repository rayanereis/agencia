require "rails_helper"

RSpec.describe ReservaDiariasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/reserva_diarias").to route_to("reserva_diarias#index")
    end

    it "routes to #new" do
      expect(:get => "/reserva_diarias/new").to route_to("reserva_diarias#new")
    end

    it "routes to #show" do
      expect(:get => "/reserva_diarias/1").to route_to("reserva_diarias#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/reserva_diarias/1/edit").to route_to("reserva_diarias#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/reserva_diarias").to route_to("reserva_diarias#create")
    end

    it "routes to #update" do
      expect(:put => "/reserva_diarias/1").to route_to("reserva_diarias#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/reserva_diarias/1").to route_to("reserva_diarias#destroy", :id => "1")
    end

  end
end
