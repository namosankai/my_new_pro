class CreateExpences < ActiveRecord::Migration[6.0]
  def change
    create_table :expences do |t|
      t.text :name
      t.integer :cost

      t.timestamps
    end
  end
end
