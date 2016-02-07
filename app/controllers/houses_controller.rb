class HousesController < ApplicationController
	def search
	end

	def results
		@houses = House.search_results(params[:search])
	end

	# def new
	# 	@house = House.new
	# 	@house.beds.build
	# 	@house.photos.build
	# end

	# def create
	# 	@house  = House.new(house_params)
	# 	if @house.save
	# 		flash[:success] = "Successfully created new house..."
	# 		redirect_to @house
	# 	else
	# 		flash[:notice] = "@house.save failed..."
	# 		render 'new'
	# 	end
	# end

	def show
		@house = House.find(params[:id])
		@living_room_amenities = @house.amenities.where("category = ?", "living room")
		@kitchen_amenities = @house.amenities.where("category = ?", "kitchen")
		@bedroom_amenities = @house.amenities.where("category = ?", "bedroom")
		@bathroom_amenities = @house.amenities.where("category = ?", "bathroom")
		@society_amenities = @house.amenities.where("category = ?", "society")
	end

	private

		def house_params
			params.require(:house).permit(:category, :title, :bhk, :no_of_beds, :allowed_gender, 
																		:locality_id, :pincode, :lat, :long, :address, :landmark, 
																		beds_attributes: [:id, :rent, :security_deposit, :room_occupancy],
																		photos_attributes: [:id, :image, :caption])
		end
end
