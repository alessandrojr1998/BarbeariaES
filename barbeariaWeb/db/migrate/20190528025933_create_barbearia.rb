class CreateBarbearia < ActiveRecord::Migration[5.1]
  def change
    create_table :barbearia do |t|
      t.string :nome
      t.string :contato
      t.integer :user_id
      t.integer :id
      t.integer :endereco_id

      t.timestamps
    end
  end
end
