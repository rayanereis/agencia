class CreateHoteis < ActiveRecord::Migration
  def change
    create_table :hoteis do |t|
      t.string :nome
      t.string :cnpj
      t.string :email

      t.timestamps
    end
  end
end
