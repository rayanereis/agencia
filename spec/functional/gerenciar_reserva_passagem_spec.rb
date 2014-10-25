# coding: utf-8

require 'rails_helper'

feature 'gerenciar Reservar Passagens' do

  before :each do
   
    create(:empresa_aerea, nome: 'Voa Bem', cnpj:'12345', email:'voa@bem.com')
  end

 
   let(:empresa_aerea) {create(:empresa_aerea, nome: 'VRG', cnpj:'98765', email:'gollinhasaereas@gol.com')}

  scenario 'incluir Reservar Passagens' do # , :js => true  do

    visit new_reservar_passagem_path

    preencher_e_verificar_reservar_passagem
  end

  scenario 'alterar Reservar Passagens' do #, :js => true  do

    reservar_passagem = FactoryGirl.create(:reservar_passagem, :empresa_aerea => empresa_aerea)

    visit edit_reservar_passagem_path(reservar_passagem)

    preencher_e_verificar_reservar_passagem
  end

   scenario 'excluir reservar_passagem' do #, :javascript => true  do

       reservar_passagem = FactoryGirl.create(:reservar_passagem, :empresa_aerea => empresa_aerea)

        visit reservar_passagens_path

        click_link 'Excluir'
 end

   def preencher_e_verificar_reservar_passagem

      fill_in 'Data partida',  :with => "2014-10-25"
     
      fill_in 'Hora partida',  :with => "13"
      fill_in 'Minuto partida',  :with => "30"
      fill_in 'Origem',  :with => "Campinas SP"
      fill_in 'Destino',  :with => "Florianopolis"
      fill_in 'Valor unitario',  :with => "660"
      fill_in 'Vagas disponiveis',  :with => "100"
      
      select 'Voa Bem', from: 'Empresa aerea'

      click_button 'Salvar'

      expect(page).to have_content 'Data partida:  2014-10-25'
      expect(page).to have_content 'Hora partida: 13'
      expect(page).to have_content 'Minuto partida: 30' 
      expect(page).to have_content 'Origem: Campinas SP' 
      expect(page).to have_content 'Destino: Florianopolis'
      expect(page).to have_content 'Valor unitario: 660' 
      expect(page).to have_content 'Vagas disponiveis: 100'

       expect(page).to have_content 'Empresa aerea: Voa Bem'
 end
end

