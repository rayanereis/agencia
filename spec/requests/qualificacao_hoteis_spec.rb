require 'rails_helper'

RSpec.describe "QualificacaoHoteis", :type => :request do
  describe "GET /qualificacao_hoteis" do
    it "works! (now write some real specs)" do
      get qualificacao_hoteis_path
      expect(response.status).to be(200)
    end
  end
end
