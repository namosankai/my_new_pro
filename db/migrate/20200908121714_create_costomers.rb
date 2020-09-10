class CreateCostomers < ActiveRecord::Migration[6.0]
  def change
    create_table :costomers do |t|
      t.text :name

      t.timestamps
    end
  end
end
