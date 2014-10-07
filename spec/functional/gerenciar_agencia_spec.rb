# coding: utf-8

require 'rails_helper'

feature 'gerenciar Agencia' do

  scenario 'incluir Agencia' do # , :js => true  do

    visit new_agencia_path

    preencher_e_verificar_agencia



  end

  scenario 'alterar Agencia' do #, :js => true  do

    agencia = FactoryGirl.create(:agencia)

    visit edit_agencia_path(agencia)

    preencher_e_verificar_agencia



  end

 scenario 'excluir Agencia' do #, :javascript => true  do

       usuario = FactoryGirl.create(:agencia)

        visit usuarios_path

        click_link 'Excluir'

  end


   def preencher_e_verificar_agencia

      fill_in 'Nome',  :with => "Voa Bem"
      fill_in 'Cnpj',  :with => "12345"
      fill_in 'Email',  :with => "voa@bem.com"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Voa Bem'
      expect(page).to have_content 'Cnpj: 12345'
      expect(page).to have_content 'Email: voa@bem.com'



   end
end
