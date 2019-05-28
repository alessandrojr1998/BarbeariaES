class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios, :id => false do |t|
      t.string :nome
      t.string :sobrenome
      t.string :cpf
      t.string :senha
      t.string :contato
      t.integer :id_usuario, primary_key: true

      t.timestamps
    end
  end
end
