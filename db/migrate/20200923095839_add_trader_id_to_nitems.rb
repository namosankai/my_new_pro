class AddTraderIdToNitems < ActiveRecord::Migration[6.0]
  def change
    add_column :nitems, :trader_id, :integer
  end
end
