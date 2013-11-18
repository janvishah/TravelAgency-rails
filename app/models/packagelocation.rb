class Packagelocation < ActiveRecord::Base
  attr_accessible :image, :location, :text

  def class_name
  	if self.location == "kerela"
  	  return "blue"
  	else
  	  return "green"
  	end
  end
end
