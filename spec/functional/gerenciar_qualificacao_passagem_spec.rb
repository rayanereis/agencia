# coding: utf-8

require 'rails_helper'

feature 'gerenciar QualificacaoPassagem' do

  before :each do
    create(:usuario, nome: 'Fulano', senha:'12345', email:'fulano@fulano.com')
    create(:empresa_aerea, nome: 'Voa Bem', cnpj:'12345', email:'voa@bem.com')

  end

  let(:usuario) {create(:usuario, nome: 'Ana', senha:'6789', email:'anapaula@gmail.com')}
  let(:empresa_aerea) {create(:empresa_aerea, nome: 'VRG', cnpj:'98765', email:'gollinhasaereas@gol.com')}


  scenario 'incluir QualificacaoPassagem' do # , :js => true  do

    visit new_qualificacao_passagem_path

    preencher_e_verificar_qualificacao_passagem
  end

  scenario 'alterar QualificacaoPassagem' do #, :js => true  do

    qualificacao_passagem = FactoryGirl.create(:qualificacao_passagem,:empresa_aerea => empresa_aerea, :usuario => usuario)

    visit edit_qualificacao_passagem_path(qualificacao_passagem)

    preencher_e_verificar_qualificacao_passagem
  end

   scenario 'excluir qualificacao_passagem' do #, :javascript => true  do

       qualificacao_passagem = FactoryGirl.create(:qualificacao_passagem, :empresa_aerea => empresa_aerea, :usuario => usuario)

        visit qualificacao_passagens_path

        click_link 'Excluir'
 end

   def preencher_e_verificar_qualificacao_passagem

      check 'concretizado'
      fill_in 'justificativa',  :with => "1"
      fill_in 'nivel',  :with => "1"
      fill_in 'comentario',  :with => "ok"
      select 'Voa Bem', from: 'Empresa aerea'
      select 'Fulano', from: 'Usuario'


      click_button 'Salvar'

      expect(page).to have_content 'Concretizado: true'
      expect(page).to have_content 'Justificativa: 1'
      expect(page).to have_content 'Nivel: 1' 
      expect(page).to have_content 'Comentario: ok'
      expect(page).to have_content 'Usuario: Fulano'
      expect(page).to have_content 'Empresa aerea: Voa Bem'
 end
end