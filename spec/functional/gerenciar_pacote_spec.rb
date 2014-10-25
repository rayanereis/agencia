# coding: utf-8

require 'rails_helper'

feature 'gerenciar Pacote' do

  before :each do
    create(:usuario, nome: 'Fulano', senha:'12345', email:'fulano@fulano.com')
    create(:empresa_aerea, nome: 'Voa Bem', cnpj:'12345', email:'voa@bem.com')
    create(:hotel, nome: 'Hotel Bela Vida', cnpj:'12345', email:'belavidahotel@bvh.com')
     
    create(:reservar_passagem, data_partida: '01/09/15', hora_partida: '13', minuto_partida:'30',origem: 'Campinas', destino:'florianopolis', valor_unitario:'660', vagas_disponiveis:'100', empresa_aerea: empresa_aerea)
    create(:reserva_diaria, periodo_inicial: '01/09/15', periodo_final:'30/09/15', valor_unitario:'177', vagas_disponiveis: '100' , hotel: hotel)
   end

   let(:usuario) {create(:usuario, nome: 'Ana', senha:'6789', email:'anapaula@gmail.com')}
   let(:empresa_aerea) {create(:empresa_aerea, nome: 'VRG', cnpj:'98765', email:'gollinhasaereas@gol.com')}
   let(:hotel) {create(:hotel, nome: 'Passe Bem', cnpj:'12398', email:'passebem@pbh.com')}
   
   let(:reserva_diaria) {create( :reserva_diaria, periodo_inicial: '01/12/15', periodo_final:'31/12/15', valor_unitario:'354', vagas_disponiveis: '150',hotel: hotel )}
   let(:reservar_passagem) {create(:reservar_passagem, data_partida: '02/12/15', hora_partida: '14', minuto_partida:'10',origem: 'Rio de Janeiro', destino:'Uberlandia', valor_unitario:'1060', vagas_disponiveis:'100', empresa_aerea: empresa_aerea)}


  scenario 'incluir Pacote' do # , :js => true  do

    visit new_pacote_path

    preencher_e_verificar_pacote
  end

  scenario 'alterar Pacote' do #, :js => true  do

    pacote = FactoryGirl.create(:pacote, :usuario=>usuario, :reservar_passagem=>reservar_passagem, :reserva_diaria=>reserva_diaria)

    visit edit_pacote_path(pacote)

    preencher_e_verificar_pacote
  end

   scenario 'excluir pacote' do #, :javascript => true  do

       pacote = FactoryGirl.create(:pacote, :usuario=>usuario, :reservar_passagem=>reservar_passagem, :reserva_diaria=>reserva_diaria)

        visit pacotes_path

        click_link 'Excluir'
 end

   def preencher_e_verificar_pacote


      fill_in 'Destino',  :with => "Rio"
      fill_in 'Total',  :with => "13"
      fill_in 'Quantidade',  :with => "2"
       
      
      select 'florianopolis', from: 'Reservar passagem'
      select '01/09/15', from: 'Reserva diaria'
      select '01/09/15', from: 'Reserva diaria'
 
      select 'Fulano', from: "Usuario"

      click_button 'Salvar'

      expect(page).to have_content 'Destino: Rio'
    
      expect(page).to have_content 'Total: 13'
      expect(page).to have_content 'Quantidade: 2'
      expect(page).to have_content 'Usuario: Fulano'
       expect(page).to have_content 'Reservar passagem: florianopolis'
       expect(page).to have_content 'Reserva diaria: 01/09/15'
 end
end


