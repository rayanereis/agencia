require "rails_helper"

RSpec.describe AgenciaaereasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/agenciaaereas").to route_to("agenciaaereas#index")
    end

    it "routes to #new" do
      expect(:get => "/agenciaaereas/new").to route_to("agenciaaereas#new")
    end

    it "routes to #show" do
      expect(:get => "/agenciaaereas/1").to route_to("agenciaaereas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/agenciaaereas/1/edit").to route_to("agenciaaereas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/agenciaaereas").to route_to("agenciaaereas#create")
    end

    it "routes to #update" do
      expect(:put => "/agenciaaereas/1").to route_to("agenciaaereas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/agenciaaereas/1").to route_to("agenciaaereas#destroy", :id => "1")
    end

  end
end
