# coding: utf-8

require 'rails_helper'

feature 'gerenciar Reserva Passagens' do

  before :each do
   
    create(:empresa_aerea, nome: 'Voa Bem', cnpj:'12345', email:'voa@bem.com')
  end

 
   let(:empresa_aerea) {create(:empresa_aerea, nome: 'VRG', cnpj:'98765', email:'gollinhasaereas@gol.com')}

  scenario 'incluir Reserva Passagens' do # , :js => true  do

    visit new_reserva_passagem_path

    preencher_e_verificar_reserva_passagem
  end

  scenario 'alterar Reserva Passagens' do #, :js => true  do

    reserva_passagem = FactoryGirl.create(:reserva_passagem,:hotel => hotel)

    visit edit_reserva_passagem_path(reserva_passagem)

    preencher_e_verificar_reserva_passagem
  end

   scenario 'excluir reserva_passagem' do #, :javascript => true  do

       reserva_passagem = FactoryGirl.create(:reserva_passagem, :hotel => hotel)

        visit reserva_passagens_path

        click_link 'Excluir'
 end

   def preencher_e_verificar_reserva_passagem

      fill_in 'data',  :with => "01/09/15"
      fill_in 'hora_partida',  :with => "13"
      fill_in 'minuto_partida',  :with => "30"
      fill_in 'origem',  :with => "Campinas SP"
      fill_in 'destino',  :with => "Florianopolis"
      fill_in 'valor_unitario',  :with => "660"
      fill_in 'vagas_disponiveis',  :with => "100"
      
      select 'Voa Bem', from: 'empresa_aerea'

      click_button 'Salvar'

      expect(page).to have_content 'data: 01/09/15'
      expect(page).to have_content 'hora_partida: 13'
      expect(page).to have_content 'minuto_partida: 30' 
      expect(page).to have_content 'origem: Campinas SP' 
      expect(page).to have_content 'destino: Florianopolis'
      expect(page).to have_content 'valor_unitario: 177' 
      expect(page).to have_content 'vagas_disponiveis: 100'

       expect(page).to have_content 'empresa_aerea: Voa Bem'
 end
end