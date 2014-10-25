class CreateReservaDiarias < ActiveRecord::Migration
  def change
    create_table :reserva_diarias do |t|
      t.string :periodo_inicial
      t.string :periodo_final
      t.string :valor_unitario
      t.string :vagas_disponiveis
      t.references :hotel, index: true

      t.timestamps
    end
  end
end
