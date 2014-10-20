require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe QualificacaoHoteisController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # QualificacaoHotel. As you add validations to QualificacaoHotel, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # QualificacaoHoteisController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all qualificacao_hoteis as @qualificacao_hoteis" do
      qualificacao_hotel = QualificacaoHotel.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:qualificacao_hoteis)).to eq([qualificacao_hotel])
    end
  end

  describe "GET show" do
    it "assigns the requested qualificacao_hotel as @qualificacao_hotel" do
      qualificacao_hotel = QualificacaoHotel.create! valid_attributes
      get :show, {:id => qualificacao_hotel.to_param}, valid_session
      expect(assigns(:qualificacao_hotel)).to eq(qualificacao_hotel)
    end
  end

  describe "GET new" do
    it "assigns a new qualificacao_hotel as @qualificacao_hotel" do
      get :new, {}, valid_session
      expect(assigns(:qualificacao_hotel)).to be_a_new(QualificacaoHotel)
    end
  end

  describe "GET edit" do
    it "assigns the requested qualificacao_hotel as @qualificacao_hotel" do
      qualificacao_hotel = QualificacaoHotel.create! valid_attributes
      get :edit, {:id => qualificacao_hotel.to_param}, valid_session
      expect(assigns(:qualificacao_hotel)).to eq(qualificacao_hotel)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new QualificacaoHotel" do
        expect {
          post :create, {:qualificacao_hotel => valid_attributes}, valid_session
        }.to change(QualificacaoHotel, :count).by(1)
      end

      it "assigns a newly created qualificacao_hotel as @qualificacao_hotel" do
        post :create, {:qualificacao_hotel => valid_attributes}, valid_session
        expect(assigns(:qualificacao_hotel)).to be_a(QualificacaoHotel)
        expect(assigns(:qualificacao_hotel)).to be_persisted
      end

      it "redirects to the created qualificacao_hotel" do
        post :create, {:qualificacao_hotel => valid_attributes}, valid_session
        expect(response).to redirect_to(QualificacaoHotel.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved qualificacao_hotel as @qualificacao_hotel" do
        post :create, {:qualificacao_hotel => invalid_attributes}, valid_session
        expect(assigns(:qualificacao_hotel)).to be_a_new(QualificacaoHotel)
      end

      it "re-renders the 'new' template" do
        post :create, {:qualificacao_hotel => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested qualificacao_hotel" do
        qualificacao_hotel = QualificacaoHotel.create! valid_attributes
        put :update, {:id => qualificacao_hotel.to_param, :qualificacao_hotel => new_attributes}, valid_session
        qualificacao_hotel.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested qualificacao_hotel as @qualificacao_hotel" do
        qualificacao_hotel = QualificacaoHotel.create! valid_attributes
        put :update, {:id => qualificacao_hotel.to_param, :qualificacao_hotel => valid_attributes}, valid_session
        expect(assigns(:qualificacao_hotel)).to eq(qualificacao_hotel)
      end

      it "redirects to the qualificacao_hotel" do
        qualificacao_hotel = QualificacaoHotel.create! valid_attributes
        put :update, {:id => qualificacao_hotel.to_param, :qualificacao_hotel => valid_attributes}, valid_session
        expect(response).to redirect_to(qualificacao_hotel)
      end
    end

    describe "with invalid params" do
      it "assigns the qualificacao_hotel as @qualificacao_hotel" do
        qualificacao_hotel = QualificacaoHotel.create! valid_attributes
        put :update, {:id => qualificacao_hotel.to_param, :qualificacao_hotel => invalid_attributes}, valid_session
        expect(assigns(:qualificacao_hotel)).to eq(qualificacao_hotel)
      end

      it "re-renders the 'edit' template" do
        qualificacao_hotel = QualificacaoHotel.create! valid_attributes
        put :update, {:id => qualificacao_hotel.to_param, :qualificacao_hotel => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested qualificacao_hotel" do
      qualificacao_hotel = QualificacaoHotel.create! valid_attributes
      expect {
        delete :destroy, {:id => qualificacao_hotel.to_param}, valid_session
      }.to change(QualificacaoHotel, :count).by(-1)
    end

    it "redirects to the qualificacao_hoteis list" do
      qualificacao_hotel = QualificacaoHotel.create! valid_attributes
      delete :destroy, {:id => qualificacao_hotel.to_param}, valid_session
      expect(response).to redirect_to(qualificacao_hoteis_url)
    end
  end

end
