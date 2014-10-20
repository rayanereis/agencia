require "rails_helper"

RSpec.describe QualificacaoHoteisController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/qualificacao_hoteis").to route_to("qualificacao_hoteis#index")
    end

    it "routes to #new" do
      expect(:get => "/qualificacao_hoteis/new").to route_to("qualificacao_hoteis#new")
    end

    it "routes to #show" do
      expect(:get => "/qualificacao_hoteis/1").to route_to("qualificacao_hoteis#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/qualificacao_hoteis/1/edit").to route_to("qualificacao_hoteis#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/qualificacao_hoteis").to route_to("qualificacao_hoteis#create")
    end

    it "routes to #update" do
      expect(:put => "/qualificacao_hoteis/1").to route_to("qualificacao_hoteis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/qualificacao_hoteis/1").to route_to("qualificacao_hoteis#destroy", :id => "1")
    end

  end
end
