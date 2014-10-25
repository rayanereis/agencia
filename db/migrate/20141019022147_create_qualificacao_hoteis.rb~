class CreateQualificacaoHoteis < ActiveRecord::Migration
  def change
    create_table :qualificacao_hoteis do |t|
      t.boolean :concretizado
      t.integer :justificativa
      t.integer :nivel
      t.string :comentario
      t.references :usuario, index: true
      t.references :hotel, index: true

      t.timestamps
    end
  end
end
