class Amenity < ActiveRecord::Base
	has_many :house_amenity_relationships, dependent: :destroy

	validates :name, presence: true
end
