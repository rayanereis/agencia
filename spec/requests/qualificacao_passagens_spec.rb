require 'rails_helper'

RSpec.describe "QualificacaoPassagens", :type => :request do
  describe "GET /qualificacao_passagens" do
    it "works! (now write some real specs)" do
      get qualificacao_passagens_path
      expect(response.status).to be(200)
    end
  end
end
