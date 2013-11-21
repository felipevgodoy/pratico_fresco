class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nome
      t.string :sobrenome
      t.integer :telefone
      t.string :endereco;
      t.string :cidade
      t.string :estado
      t.integer :cep
      t.string :email
      t.string :password
    end
  end
end
