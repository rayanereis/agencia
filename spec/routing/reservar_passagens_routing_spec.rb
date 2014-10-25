require "rails_helper"

RSpec.describe ReservarPassagensController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/reservar_passagens").to route_to("reservar_passagens#index")
    end

    it "routes to #new" do
      expect(:get => "/reservar_passagens/new").to route_to("reservar_passagens#new")
    end

    it "routes to #show" do
      expect(:get => "/reservar_passagens/1").to route_to("reservar_passagens#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/reservar_passagens/1/edit").to route_to("reservar_passagens#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/reservar_passagens").to route_to("reservar_passagens#create")
    end

    it "routes to #update" do
      expect(:put => "/reservar_passagens/1").to route_to("reservar_passagens#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/reservar_passagens/1").to route_to("reservar_passagens#destroy", :id => "1")
    end

  end
end
