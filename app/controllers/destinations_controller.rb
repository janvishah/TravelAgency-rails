class DestinationsController < ApplicationController
	def index
		@i = 0
  	@packagelocation = Packagelocation.all
	end
	
end
