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

<<<<<<< HEAD
       	hotel = FactoryGirl.create(:hotel)

        visit hoteis_path
=======
       usuario = FactoryGirl.create(:hotel)

        visit usuarios_path
>>>>>>> 61d0dae675cc3e5bc45753a03ac3ff1e296511a9

        click_link 'Excluir'

  end


   def preencher_e_verificar_hotel

      fill_in 'Nome',  :with => "Bela Vista"
      fill_in 'Cnpj',  :with => "12345"
      fill_in 'Email',  :with => "bela@vista.com"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Bela Vista'
      expect(page).to have_content 'Cnpj: 12345'
      expect(page).to have_content 'Email: bela@vista.com'



   end
end
