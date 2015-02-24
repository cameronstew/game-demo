class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :constitution
      t.integer :health
      t.integer :damage

      t.timestamps null: false
    end
  end
end
