class AlterSessionsRenameMonthToSeason < ActiveRecord::Migration[8.0]
  def change
    rename_column :sessions, :month, :season
  end
end
