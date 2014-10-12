# coding: utf-8

require 'rails_helper'

feature 'gerenciar AgenciaAerea' do

  scenario 'incluir AgenciaAerea' do # , :js => true  do

    visit new_agenciaaerea_path

    preencher_e_verificar_agenciaaerea



  end

  scenario 'alterar AgenciaAerea' do #, :js => true  do

    agenciaaerea = FactoryGirl.create(:agenciaaerea)

    visit edit_agenciaaerea_path(agenciaaerea)

    preencher_e_verificar_agenciaaerea



  end

 scenario 'excluir AgenciaAerea' do #, :javascript => true  do

       agenciaaerea = FactoryGirl.create(:agenciaaerea)

        visit agenciaaerea_path

        click_link 'Excluir'

  end


   def preencher_e_verificar_agenciaaerea

      fill_in 'Nome',  :with => "Voa Bem"
      fill_in 'Cnpj',  :with => "12345"
      fill_in 'Email',  :with => "voa@bem.com"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Voa Bem'
      expect(page).to have_content 'Cnpj: 12345'
      expect(page).to have_content 'Email: voa@bem.com'



   end
end
