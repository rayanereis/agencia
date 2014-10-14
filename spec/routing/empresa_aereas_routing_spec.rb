require "rails_helper"

RSpec.describe EmpresaAereasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/empresa_aereas").to route_to("empresa_aereas#index")
    end

    it "routes to #new" do
      expect(:get => "/empresa_aereas/new").to route_to("empresa_aereas#new")
    end

    it "routes to #show" do
      expect(:get => "/empresa_aereas/1").to route_to("empresa_aereas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/empresa_aereas/1/edit").to route_to("empresa_aereas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/empresa_aereas").to route_to("empresa_aereas#create")
    end

    it "routes to #update" do
      expect(:put => "/empresa_aereas/1").to route_to("empresa_aereas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/empresa_aereas/1").to route_to("empresa_aereas#destroy", :id => "1")
    end

  end
end
