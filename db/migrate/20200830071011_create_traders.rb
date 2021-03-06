class CreateTraders < ActiveRecord::Migration[6.0]
  def change
    create_table :traders do |t|
      t.text :content

      t.timestamps
    end

    create_table :items do |t|
      t.belongs_to :trader
      t.timestamps
    end
  end
end
