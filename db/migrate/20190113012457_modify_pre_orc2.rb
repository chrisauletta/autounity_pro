class ModifyPreOrc2 < ActiveRecord::Migration[5.1]
  def change
    add_column :pre_orcs, :valor_total, :integer
  end
end
