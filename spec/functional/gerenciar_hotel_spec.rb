# coding: utf-8

require 'rails_helper'

feature 'gerenciar Hotel' do

  scenario 'incluir Hotel' do # , :js => true  do

    visit new_hotel_path

    preencher_e_verificar_hotel



  end

  scenario 'alterar Hotel' do #, :js => true  do

    hotel = FactoryGirl.create(:hotel)

    visit edit_hotel_path(hotel)

    preencher_e_verificar_hotel



  end

 scenario 'excluir Hotel' do #, :javascript => true  do

       hotel = FactoryGirl.create(:hotel)

        visit hoteis_path

        click_link 'Excluir'

  end


   def preencher_e_verificar_hotel

      fill_in 'Nome',  :with => "Hotel Bela Vida"
      fill_in 'Cnpj',  :with => "12345"
      fill_in 'Email',  :with => "belavidahotel@bvh.com"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Hotel Bela Vida'
      expect(page).to have_content 'Cnpj: 12345'
      expect(page).to have_content 'Email: belavidahotel@bvh.com'



   end
end
