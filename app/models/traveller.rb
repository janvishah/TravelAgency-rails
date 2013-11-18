class Traveller < ActiveRecord::Base
  attr_accessible :address, :adult, :children, :email, :name, :ph_no
end
