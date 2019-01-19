class CreatePreOrcs < ActiveRecord::Migration[5.1]
  def change
    create_table :pre_orcs do |t|
      t.string :descricao
      t.integer :valor
      t.references :orcamento, foreign_key: true

      t.timestamps
    end
  end
end
