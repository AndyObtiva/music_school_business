class CreateInstructors < ActiveRecord::Migration[8.0]
  def change
    create_table :instructors do |t|
      t.string :full_name
      t.text :bio

      t.timestamps
    end
  end
end
