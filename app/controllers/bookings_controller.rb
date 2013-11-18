class BookingsController < ApplicationController
	def new
	end

	def create
		@traveller = Traveller.new(params[:traveller])
    if @traveller.save
      render :action => 'new'
    else
      render :action => 'new'
    end
	end
end
