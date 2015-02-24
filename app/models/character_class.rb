class CharacterClass < ActiveRecord::Base
  has_and_belongs_to_many :abilities
  has_and_belongs_to_many :characters
  has_and_belongs_to_many :special_items
end
