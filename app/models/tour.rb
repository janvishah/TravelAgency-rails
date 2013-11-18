class Tour < ActiveRecord::Base
  attr_accessible :date, :days, :name, :nights, :packagelocation_id, :text
  has_many :tour_places
  has_many :places, through: :tour_places
  accepts_nested_attributes_for :tour_places
end
