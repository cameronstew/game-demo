class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :mounts, :character_id_id, :character
  end
end
