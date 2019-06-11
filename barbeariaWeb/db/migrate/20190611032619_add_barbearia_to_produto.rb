class AddBarbeariaToProduto < ActiveRecord::Migration[5.1]
  def change
    add_reference :produtos, :barbearium, foreign_key: true
  end
end
