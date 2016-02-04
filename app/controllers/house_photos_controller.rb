class HousePhotosController < ApplicationController
	def create
		house = House.find(params[:house_id])
		@photo = house.photos.build(house_photo_params)
		if @photo.save
			flash[:success] = "Successfully saved the photo..."
			redirect_to house
		else
			flash[:notice] = "Couldn't save the photo. Try again..."
			redirect_to house
		end
	end

	def index
	end

	def destroy
	end

	private

		def house_photo_params
			params.require(:house_photo).permit(:image, :caption)
		end
end
