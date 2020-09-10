class AddPriceToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :price, :integer
    add_column :items, :cost, :integer
    add_column :items, :taxin, :integer
  end
end
