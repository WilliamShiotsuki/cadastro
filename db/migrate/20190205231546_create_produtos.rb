class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :cod
      t.string :nome
      t.float :valor
      t.text :descricao

      t.timestamps
    end
  end
end
