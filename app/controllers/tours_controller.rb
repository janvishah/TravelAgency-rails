class ToursController < ApplicationController
	
  def index
	  packagelocation_id = params[:destination_id]
    @package_location = Packagelocation.find(packagelocation_id)
	  @tours = Tour.where(packagelocation_id: packagelocation_id)
  end
  	
  def show
  		@tour_id = params[:destination_id]
  		@tour = Tour.find(@tour_id)
  end
  
  
  def save
  	@traveller = Traveller.new(params[:Traveller])
    if @traveller.save
        redirect_to @booking, notice: "Successfully created."
    else
      	render :action => 'booking'
    end
  end
end
