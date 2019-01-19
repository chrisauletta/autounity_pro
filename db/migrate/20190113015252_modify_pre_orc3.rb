class ModifyPreOrc3 < ActiveRecord::Migration[5.1]
  def change
    remove_column :pre_orcs, :valor_total
  end
end
