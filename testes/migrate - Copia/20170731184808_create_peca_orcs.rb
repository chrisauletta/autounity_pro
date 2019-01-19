class CreatePecaOrcs < ActiveRecord::Migration[5.1]
  def change
    create_table :peca_orcs do |t|
    t.integer :quantidade
    t.decimal :preco_o
      t.references :orcamento, foreign_key: true
      t.references :peca, foreign_key: true

      t.timestamps
    end
  end
end
