class FixColumnNameAgain < ActiveRecord::Migration
  def change
    rename_column :mounts, :character, :character_id
  end
end
