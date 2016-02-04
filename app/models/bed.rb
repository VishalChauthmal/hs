class Bed < ActiveRecord::Base
	belongs_to :house, inverse_of: :beds
	belongs_to :tenant

	validates :house, presence: true
	validates :rent, presence: true
	validates :security_deposit, presence: true
	validates :room_occupancy, presence: true
end
