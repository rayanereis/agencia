# coding: utf-8

require 'rails_helper'

feature 'gerenciar Reserva Diarias' do

  before :each do
   
    create(:hotel, nome: 'Hotel Bela Vida', cnpj:'12345', email:'belavidahotel@bvh.com')

  end

 
  let(:hotel) {create(:hotel, nome: 'Passe Bem', cnpj:'12398', email:'passebem@pbh.com')}


  scenario 'incluir Reserva Diarias' do # , :js => true  do

    visit new_reserva_diaria_path

    preencher_e_verificar_reserva_diaria
  end

  scenario 'alterar Reserva Diarias' do #, :js => true  do

    reserva_diaria = FactoryGirl.create(:reserva_diaria,:hotel => hotel)

    visit edit_reserva_diaria_path(reserva_diaria)

    preencher_e_verificar_reserva_diaria
  end

   scenario 'excluir reserva_diaria' do #, :javascript => true  do

       reserva_diaria = FactoryGirl.create(:reserva_diaria, :hotel => hotel)

        visit reserva_diarias_path

        click_link 'Excluir'
 end

   def preencher_e_verificar_reserva_diaria

      fill_in 'periodo_inicial',  :with => "01/09/15"
      fill_in 'periodo_final',  :with => "30/09/15"
      fill_in 'valor_unitario',  :with => "177"
      fill_in 'vagas_disponiveis',  :with => "100"
      
      select 'Hotel Bela Vida', from: 'hotel'

      click_button 'Salvar'

      expect(page).to have_content 'periodo_inicial: 01/09/15'
      expect(page).to have_content 'periodo_final: 30/09/15'
      expect(page).to have_content 'valor_unitario: 177' 
      expect(page).to have_content 'vagas_disponiveis: 100'

      expect(page).to have_content 'Hotel: Hotel Bela Vida'
 end
end