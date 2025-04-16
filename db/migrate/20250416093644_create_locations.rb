class CreateLocations < ActiveRecord::Migration[8.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :phone
      t.text :address

      t.timestamps
    end
  end
end
