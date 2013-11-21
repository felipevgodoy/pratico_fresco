class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :categoria
      t.string :subcategoria
      t.string :item
      t.string :marca
      t.text :descricao
      t.float :preco
      t.string :imagem
    end
  end
end
