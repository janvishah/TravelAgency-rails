class WelcomeController < ApplicationController
  def index
  	@package_locations = Packagelocation.all 
  end
end
