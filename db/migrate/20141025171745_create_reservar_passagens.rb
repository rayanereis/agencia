class CreateReservarPassagens < ActiveRecord::Migration
  def change
    create_table :reservar_passagens do |t|
      t.string :data_partida
      t.integer :hora_partida
      t.integer :minuto_partida
      t.string :origem
      t.string :destino
      t.float :valor_unitario
      t.integer :vagas_disponiveis
      t.references :empresa_aerea, index: true

      t.timestamps
    end
  end
end
