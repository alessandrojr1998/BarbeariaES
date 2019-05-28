class CreateEnderecos < ActiveRecord::Migration[5.1]
  def change
    create_table :enderecos, :id => false do |t|
      t.string :rua
      t.string :bairro
      t.integer :numero
      t.integer :id, primary_key: true

      t.timestamps
    end
  end
end
