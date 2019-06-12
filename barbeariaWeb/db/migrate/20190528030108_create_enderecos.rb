class CreateEnderecos < ActiveRecord::Migration[5.1]
  def change
    create_table :enderecos do |t|
      t.string :rua
      t.string :bairro
      t.integer :numero

      t.timestamps
    end
  end
end
