class CreateItemEntries < ActiveRecord::Migration
  def change
    create_table :item_entries do |t|
      t.references :item
      t.references :user
      t.string :adjustment_type
      t.string :patient_number
      t.text :notes
      t.datetime :date
      t.timestamps
    end
  end
end
