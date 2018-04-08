class TripsController < ApplicationController
	def create
		@user = User.find_by_id(params[:id])
		if @user.role=='admin'?
			@trips.each do |trip|
		  	    @Vehicle = Vehicle.find_by_name(trip.vehicle_name)
		  	    if @Vehicle.company==@user.company?
		  	    else
		  	     	flash[:error] = "Please use vehicles from your own company."
	      			render :action => :new
	      		end	
			end
			@Trips = Trip.create(@trips)
			if @Trips.save
			else
				raise ActiveRecord::Rollback
	    else
	      root_path
	    end
	end

	def get
	end
end
