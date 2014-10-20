# coding: utf-8

require 'rails_helper'

feature 'gerenciar Pacote' do


    
      
    create(:usuario, nome: 'Fulano', senha:'12345', email:'fulano@fulano.com')
    create(:empresa_aerea, nome: 'Voa Bem', cnpj:'12345', email:'voa@bem.com')
    create(:hotel, nome: 'Hotel Bela Vida', cnpj:'12345', email:'belavidahotel@bvh.com')
     
    create(:reserva_passagem, data: '01/09/15', hora_partida: '13', minuto_partida:'30',origem: 'Campinas', destino:'florianopolis', valor_unitario:'660', vagas_disponiveis:'100', empresa_aerea: empresa_aerea, usuario: usuario)
    create(:reserva_diaria, periodo_inicial: '01/09/15', periodo_final:'30/09/15', valor_unitario:'177', vagas_disponiveis: '100' , hotel: hotel, usuario: usuario)
   end

   let(:usuario) {create(:usuario, nome: 'Ana', senha:'6789', email:'anapaula@gmail.com')}
   let(:empresa_aerea) {create(:empresa_aerea, nome: 'VRG', cnpj:'98765', email:'gollinhasaereas@gol.com')}
   let(:hotel) {create(:hotel, nome: 'Passe Bem', cnpj:'12398', email:'passebem@pbh.com')}
   
   let(:reserva_diaria) {create( :reserva_diaria, periodo_inicial: '01/12/15', periodo_final:'31/12/15', valor_unitario:'354', vagas_disponiveis: '150',empresa_aerea: empresa_aerea, usuario: usuario )}
   let(:reserva_passagem) {create(:reserva_passagem, data: '02/12/15', hora_partida: '14', minuto_partida:'10',origem: 'Rio de Janeiro', destino:'Uberlandia', valor_unitario:'1060', vagas_disponiveis:'100', hotel: hotel, usuario: usuario)}


  scenario 'incluir Pacote' do # , :js => true  do

    visit new_pacote_path

    preencher_e_verificar_pacote
  end

  scenario 'alterar Pacote' do #, :js => true  do

    pacote = FactoryGirl.create(:pacote,:hotel => hotel)

    visit edit_pacote_path(pacote)

    preencher_e_verificar_pacote
  end

   scenario 'excluir pacote' do #, :javascript => true  do

       pacote = FactoryGirl.create(:pacote, :usuario=>usuario,:empresa_aerea=>empresa_aerea, :hotel => hotel, :reserva_passagem=>reserva_passagem, :reserva_diaria)

        visit pacotes_path

        click_link 'Excluir'
 end

   def preencher_e_verificar_pacote

      fill_in 'data_ida',  :with => "01/09/15"
       fill_in 'data_volta',  :with => "15/09/15"
      fill_in 'hora_entrada',  :with => "13"
      fill_in 'minuto_entrada',  :with => "30"
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