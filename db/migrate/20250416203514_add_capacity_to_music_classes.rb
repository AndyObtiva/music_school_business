class AddCapacityToMusicClasses < ActiveRecord::Migration[8.0]
  def change
    add_column :music_classes, :capacity, :integer
  end
end
