require "rails_helper"

RSpec.describe HoteisController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/hoteis").to route_to("hoteis#index")
    end

    it "routes to #new" do
      expect(:get => "/hoteis/new").to route_to("hoteis#new")
    end

    it "routes to #show" do
      expect(:get => "/hoteis/1").to route_to("hoteis#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hoteis/1/edit").to route_to("hoteis#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/hoteis").to route_to("hoteis#create")
    end

    it "routes to #update" do
      expect(:put => "/hoteis/1").to route_to("hoteis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hoteis/1").to route_to("hoteis#destroy", :id => "1")
    end

  end
end
