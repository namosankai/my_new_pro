class AddAnyidToExpenses < ActiveRecord::Migration[6.0]
  def change
    add_column :expenses, :trader_id, :integer
    add_column :expenses, :today_id, :integer
  end
end
