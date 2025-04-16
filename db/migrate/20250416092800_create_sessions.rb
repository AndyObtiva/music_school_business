class CreateSessions < ActiveRecord::Migration[8.0]
  def change
    create_table :sessions do |t|
      t.integer :year
      t.string :month
      t.date :start_date

      t.timestamps
    end
  end
end
