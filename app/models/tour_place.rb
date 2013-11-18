class TourPlace < ActiveRecord::Base
  attr_accessible :place_id, :tour_id
  	belongs_to :tour
  	belongs_to :place
end
