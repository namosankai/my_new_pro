class AddCostsToExpenses < ActiveRecord::Migration[6.0]
  def change
    add_column :expenses, :fixed, :integer
    add_column :expenses, :variable, :integer
    
  end
end
