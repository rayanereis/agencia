require "rails_helper"

RSpec.describe QualificacaoPassagensController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/qualificacao_passagens").to route_to("qualificacao_passagens#index")
    end

    it "routes to #new" do
      expect(:get => "/qualificacao_passagens/new").to route_to("qualificacao_passagens#new")
    end

    it "routes to #show" do
      expect(:get => "/qualificacao_passagens/1").to route_to("qualificacao_passagens#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/qualificacao_passagens/1/edit").to route_to("qualificacao_passagens#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/qualificacao_passagens").to route_to("qualificacao_passagens#create")
    end

    it "routes to #update" do
      expect(:put => "/qualificacao_passagens/1").to route_to("qualificacao_passagens#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/qualificacao_passagens/1").to route_to("qualificacao_passagens#destroy", :id => "1")
    end

  end
end
