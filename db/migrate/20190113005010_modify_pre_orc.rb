class ModifyPreOrc < ActiveRecord::Migration[5.1]
  def change
    change_column :pre_orcs, :orcamento_id, :integer
  end
end
