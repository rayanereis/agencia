# coding: utf-8

require 'rails_helper'

feature 'gerenciar QualificacaoHoteis' do

  before :each do
    create(:usuario, nome: 'Fulano', senha:'12345', email:'fulano@fulano.com')
    create(:hotel, nome: 'Hotel Bela Vida', cnpj:'12345', email:'belavidahotel@bvh.com')

  end

  let(:usuario) {create(:usuario, nome: 'Ana', senha:'6789', email:'anapaula@gmail.com')}
  let(:hotel) {create(:hotel, nome: 'Passe Bem', cnpj:'12398', email:'passebem@pbh.com')}


  scenario 'incluir QualificacaoHoteis' do # , :js => true  do

    visit new_qualificacao_hotel_path

    preencher_e_verificar_qualificacao_hotel
  end

  scenario 'alterar QualificacaoHoteis' do #, :js => true  do

    qualificacao_hotel = FactoryGirl.create(:qualificacao_hotel,:hotel => hotel, :usuario => usuario)

    visit edit_qualificacao_hotel_path(qualificacao_hotel)

    preencher_e_verificar_qualificacao_hotel
  end

   scenario 'excluir qualificacao_hotel' do #, :javascript => true  do

       qualificacao_hotel = FactoryGirl.create(:qualificacao_hotel, :hotel => hotel, :usuario => usuario)

        visit qualificacao_hoteis_path

        click_link 'Excluir'
 end

   def preencher_e_verificar_qualificacao_hotel

       check 'Concretizado'
      fill_in 'Justificativa',  :with => "1"
      fill_in 'Nivel',  :with => "1"
      fill_in 'Comentario',  :with => "ok"
      select 'Hotel Bela Vida', from: "Hotel"
      select 'Fulano', from: "Usuario"

      click_button 'Salvar'

      expect(page).to have_content 'Concretizado: true'
      expect(page).to have_content 'Justificativa: 1'
      expect(page).to have_content 'Nivel: 1' 
      expect(page).to have_content 'Comentario: ok'
      expect(page).to have_content 'Usuario: Fulano'
      expect(page).to have_content 'Hotel: Hotel Bela Vida'
 end
end