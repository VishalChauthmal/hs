class HomeController < ApplicationController
	def index
	end

	def search
	end

	def search
		# @houses = House.limit(3)
	end

	def coming_soon
		@house_listing_request = HouseListingRequest.new()
	end
	
	def single_view
	end

	def house_listing_request
		@house_listing_request = HouseListingRequest.new(house_listing_request_params)
		if @house_listing_request.save
			flash[:success] = "Thank you. We have saved your details and will get back to you soon."
			redirect_to root_url
		else
			flash[:danger] = "Sorry. You seem to have submitted incorrect/incomplete information. Please try again."
			redirect_to root_url
		end
	end

	def calculator
	end

	private
		def house_listing_request_params
			params.require(:house_listing_request).permit(:name, :email, :phone)
		end
end
