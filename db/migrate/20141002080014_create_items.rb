class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :number
      t.string :vendor
      t.string :description
      t.string :per_unit
      t.string :unit_of_measure
      t.timestamps
    end
  end
end
