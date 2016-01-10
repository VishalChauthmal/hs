class House < ActiveRecord::Base
	belongs_to :owner
	belongs_to :locality
	has_many :beds

	validates :bhk, presence: true
	validates :no_of_beds, presence: true
	validates :allowed_gender, presence: true
	validates :locality_id, presence: true
	validates :address, presence: true

	def self.search_results(search_params)
		locality_id = search_params[:locality_id]
		gender = search_params[:gender]

		if !locality_id.blank? && !gender.blank?		# Locality & Gender both specified
			House.where("locality_id IN (#{locality_id}) AND allowed_gender IN ('#{gender}')")
		elsif locality_id.blank? && !gender.blank?	# Only Gender specified
			House.where("allowed_gender IN ('#{gender}')")
		elsif !locality_id.blank? && gender.blank?	# Only Locality specified
			House.where("locality_id IN (#{locality_id})")
		else																				# Neither Locality nor Gender specified
			House.all
		end
	end
end
