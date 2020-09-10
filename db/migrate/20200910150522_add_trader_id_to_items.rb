class AddTraderIdToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :trader_id, :integer
  end
end
