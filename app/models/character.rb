class Character < ActiveRecord::Base
  has_and_belongs_to_many :character_classes
  has_and_belongs_to_many :items
  belongs_to :location
  has_one :mount
  belongs_to :party




end
