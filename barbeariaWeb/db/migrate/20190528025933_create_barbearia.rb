class CreateBarbearia < ActiveRecord::Migration[5.1]
  def change
    create_table :barbearia, :id => false do |t|
      t.string :nome
      t.string :contato
      t.integer :user_id, primary_key:true
      t.integer :id, primary_key: true
      t.integer :endereco_id

      t.timestamps
    end
  end
end
