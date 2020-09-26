class CreateNitems < ActiveRecord::Migration[6.0]
  def change
    create_table :nitems do |t|
      t.text :name
      t.integer :price
      t.integer :cost
      t.integer :taxin

      t.timestamps
    end
  end
end
