class HousesController < ApplicationController
	def search
	end

	def results
		# 1st implementation of search results for Houses - show ALL Houses
		#@houses = House.all

		# 2nd implementation of search results for Houses 
		#			Based on locality AND gender both strictly satisfied
		#@houses = House.where("locality_id IN (:locality) AND allowed_gender IN (:gender)", 
		# 										locality: params[:search][:locality_id], gender: params[:search][:gender])

		# 3rd implementation of search results for Houses
		# 		Search only by the parameters with non-blank submitted value
		@houses = House.search_results(params[:search])
	end
end
