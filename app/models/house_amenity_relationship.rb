class HouseAmenityRelationship < ActiveRecord::Base
	belongs_to :house
	belongs_to :amenity

	validates :house_id, presence: true
	validates :amenity_id, presence: true
end
