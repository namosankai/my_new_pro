class AddSomeIdToTraders < ActiveRecord::Migration[6.0]
  def change
    add_column :traders, :food, :integer
    add_column :traders, :drink, :integer
    add_column :traders, :other, :integer
  end
end
