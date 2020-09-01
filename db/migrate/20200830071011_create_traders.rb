class CreateTraders < ActiveRecord::Migration[6.0]
  def change
    create_table :traders do |t|
      t.text :content

      t.timestamps
    end
  end
end
