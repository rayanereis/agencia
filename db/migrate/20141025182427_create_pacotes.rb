class CreatePacotes < ActiveRecord::Migration
  def change
    create_table :pacotes do |t|
      t.string :destino
      t.integer :quantidadepessoas
      t.float :total
      t.references :usuario, index: true
      t.references :reservar_passagem, index: true
      t.references :reserva_diaria, index: true

      t.timestamps
    end
  end
end
