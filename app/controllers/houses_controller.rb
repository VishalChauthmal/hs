class HousesController < ApplicationController
	def search
	end

	def results
		@houses = House.search_results(params[:search])
	end

	def new
		@house = House.new
		@house.beds.build

		# @house = House.new
		# @house.photos.build
	end

	def create
		@house  = House.new(house_params)
		if @house.save
			flash[:success] = "Successfully created new house..."
			redirect_to @house
		else
			flash[:notice] = "@house.save failed..."
			render 'new'
		end
	end

	def show
		@house = House.find(params[:id])
	end

	private

		def house_params
			params.require(:house).permit(:category, :bhk, :no_of_beds, :allowed_gender, 
																		:locality_id, :pincode, :lat, :long, :address, :landmark, 
																		beds_attributes: [:id, :rent, :security_deposit, :room_occupancy])
		end
end
