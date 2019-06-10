class CreateProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :descricao
      t.float :valor
      t.integer :quantidade

      t.timestamps
    end
  end
end
