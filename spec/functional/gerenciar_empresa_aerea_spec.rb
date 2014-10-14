# coding: utf-8

require 'rails_helper'

feature 'gerenciar empresa_aerea' do

  scenario 'incluir empresa_aerea' do # , :js => true  do

    visit new_empresa_aerea_path

    preencher_e_verificar_empresa_aerea



  end

  scenario 'alterar empresa_aerea' do #, :js => true  do

    empresa_aerea = FactoryGirl.create(:empresa_aerea)

    visit edit_empresa_aerea_path(empresa_aerea)

    preencher_e_verificar_empresa_aerea



  end

 scenario 'excluir empresa_aerea' do #, :javascript => true  do

       empresa_aerea = FactoryGirl.create(:empresa_aerea)

        visit empresa_aereas_path

        click_link 'Excluir'

  end


   def preencher_e_verificar_empresa_aerea

      fill_in 'Nome',  :with => "Voa Bem"
      fill_in 'Cnpj',  :with => "12345"
      fill_in 'Email',  :with => "voa@bem.com"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Voa Bem'
      expect(page).to have_content 'Cnpj: 12345'
      expect(page).to have_content 'Email: voa@bem.com'



   end
end
