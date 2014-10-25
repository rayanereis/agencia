require "rails_helper"

RSpec.describe PacotesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pacotes").to route_to("pacotes#index")
    end

    it "routes to #new" do
      expect(:get => "/pacotes/new").to route_to("pacotes#new")
    end

    it "routes to #show" do
      expect(:get => "/pacotes/1").to route_to("pacotes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pacotes/1/edit").to route_to("pacotes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pacotes").to route_to("pacotes#create")
    end

    it "routes to #update" do
      expect(:put => "/pacotes/1").to route_to("pacotes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pacotes/1").to route_to("pacotes#destroy", :id => "1")
    end

  end
end
