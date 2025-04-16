class CreateMusicClasses < ActiveRecord::Migration[8.0]
  def change
    create_table :music_classes do |t|
      t.integer :session_id
      t.integer :instructor_id
      t.integer :location_id
      t.integer :music_class_series_id
      t.string :name
      t.text :description
      t.integer :level
      t.string :day
      t.integer :lesson_count
      t.integer :duration
      t.integer :price

      t.timestamps
    end
  end
end
