class Bed < ActiveRecord::Base
	belongs_to :house
	belongs_to :tenant

	validates :house_id, presence: true
	validates :rent, presence: true
	validates :security_deposit, presence: true
	validates :room_occupancy, presence: true
end
