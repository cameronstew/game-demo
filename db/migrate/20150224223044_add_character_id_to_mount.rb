class AddCharacterIdToMount < ActiveRecord::Migration
  def change
    add_reference :mounts, :character_id, index: true
    add_foreign_key :mounts, :character_ids
  end
end
