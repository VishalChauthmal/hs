class House < ActiveRecord::Base
	before_save { self.pincode = pincode.gsub(/\s+/, "") unless self.pincode.blank?	}

	belongs_to :owner
	belongs_to :locality
	has_many :beds, inverse_of: :house, dependent: :destroy
	has_many :house_amenity_relationships, dependent: :destroy
	has_many :amenities, through: :house_amenity_relationships
	has_many :photos, class_name: "HousePhoto", inverse_of: :house, dependent: :destroy
	has_many :tenant_visits

	accepts_nested_attributes_for :beds
	accepts_nested_attributes_for :photos

	validates :title, presence: true
	validates :bhk, presence: true
	validates :no_of_beds, presence: true
	validates :allowed_gender, presence: true
	validates :locality_id, presence: true
	validates :address, presence: true

	def self.search_results(search_params)
		locality_id = search_params[:locality_id]
		gender = search_params[:gender]

		locality_ids = "SELECT neighbor_locality_id FROM neighborhoods
										WHERE locality_id = :locality_id
										UNION ALL
										SELECT locality_id FROM neighborhoods
			 							WHERE neighbor_locality_id = :locality_id"

		if !locality_id.blank? && !gender.blank?		# Locality & Gender both specified
			House.where("locality_id IN (#{locality_ids}) OR locality_id = :locality_id 
										AND allowed_gender IN ('#{gender}')", locality_id: locality_id)
		elsif locality_id.blank? && !gender.blank?	# Only Gender specified
			House.where("allowed_gender IN ('#{gender}')")
		elsif !locality_id.blank? && gender.blank?	# Only Locality specified
			House.where("locality_id IN (#{locality_ids}) OR locality_id = :locality_id", locality_id: locality_id)
		else																				# Neither Locality nor Gender specified
			House.all
		end
	end
end
