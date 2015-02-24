class Location < ActiveRecord::Base
  has_and_belongs_to_many :monsters
  has_and_belongs_to_many :items
  has_many :characters

end
