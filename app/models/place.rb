class Place < ActiveRecord::Base
  attr_accessible :place
  has_many :tour_places
  has_many :tours, through: :tour_places
  accepts_nested_attributes_for :tour_places
end
