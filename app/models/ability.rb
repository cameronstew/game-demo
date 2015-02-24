class Ability < ActiveRecord::Base
  has_many :character_classes
  has_many :characters, through: :character_classes

end
