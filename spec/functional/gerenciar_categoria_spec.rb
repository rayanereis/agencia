# coding: utf-8

require 'rails_helper'

feature 'gerenciar Categoria' do

  before :each do
    create(:setor, nome: 'Padaria')
  end

  let(:setor) {create(:setor, nome: 'Bebida')}

  scenario 'incluir Categoria' do # , :js => true  do

    visit new_categoria_path

    preencher_e_verificar_categoria
  end

  scenario 'alterar Categoria' do #, :js => true  do

    categoria = FactoryGirl.create(:categoria,:setor => setor)

    visit edit_categoria_path(categoria)

    preencher_e_verificar_categoria
  end

   scenario 'excluir categoria' do #, :javascript => true  do

       categoria = FactoryGirl.create(:categoria, :setor => setor)

        visit categorias_path

        click_link 'Excluir'
 end

   def preencher_e_verificar_categoria

      fill_in 'Descrição',  :with => "Pães"
      select 'Padaria', from: 'Setor'

      click_button 'Salvar'

      expect(page).to have_content 'Descrição: Pães'
      expect(page).to have_content 'Setor: Padaria'
 end
end