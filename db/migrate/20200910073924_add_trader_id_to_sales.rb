class AddTraderIdToSales < ActiveRecord::Migration[6.0]
  def change
    add_column :sales, :trader_id, :integer
    add_column :items, :trader_id, :integer
  end
end
