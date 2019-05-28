class CreateEnderecos < ActiveRecord::Migration[5.1]
  def change
    create_table :enderecos,:id => false do |t|
      t.string :rua
      t.string :bairro
      t.integer :numero
      t.integer :id

      t.timestamps
    end
  end
end
