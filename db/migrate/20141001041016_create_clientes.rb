class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :sexo
      t.string :email
      t.string :login
      t.string :senha

      t.timestamps
    end
  end
end
