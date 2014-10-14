class CreateEmpresaAereas < ActiveRecord::Migration
  def change
    create_table :empresa_aereas do |t|
      t.string :nome
      t.string :cnpj
      t.string :email

      t.timestamps
    end
  end
end
