class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.integer :date
      t.integer :group
      t.integer :people
      t.text :feed
      t.text :report_txt

      t.timestamps
    end
  end
end
