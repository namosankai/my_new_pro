class AddItemIdToSales < ActiveRecord::Migration[6.0]
  def change
    add_column :sales, :item_id, :integer
    add_column :sales, :expence_id, :integer
  end
end
