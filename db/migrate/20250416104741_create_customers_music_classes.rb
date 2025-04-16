class CreateCustomersMusicClasses < ActiveRecord::Migration[8.0]
  def change
    create_table :customers_music_classes, id: false do |t|
      t.belongs_to :customer
      t.belongs_to :music_class
    end
  end
end
