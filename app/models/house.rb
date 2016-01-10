class House < ActiveRecord::Base
	belongs_to :owner
	belongs_to :locality
	has_many :beds

	validates :bhk, presence: true
	validates :no_of_beds, presence: true
	validates :allowed_gender, presence: true
	validates :locality_id, presence: true
	validates :address, presence: true
end
