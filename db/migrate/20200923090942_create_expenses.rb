class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.text :name
      t.integer :cost

      t.timestamps
    end
  end
end
