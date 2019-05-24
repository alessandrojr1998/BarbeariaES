class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :sobronome
      t.string :cpf
      t.integer :idade
      t.string :senha
      t.increment :cliente_id

      t.timestamps
    end
  end
end
