class CreateSalings < ActiveRecord::Migration[6.0]
  def change
    create_table :salings do |t|
      t.integer :target
      t.integer :resalt
      t.integer :cash
      t.integer :credit
      t.integer :gift
      t.integer :lunch
      t.integer :night
      t.integer :takeout
      t.integer :coupon
      t.integer :today_id

      t.timestamps
    end
  end
end
