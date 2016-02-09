class Room < ActiveRecord::Base
	belongs_to :house, inverse_of: :rooms
	belongs_to :tenant
	has_many :beds

	validates :house, presence: true
	validates :rent, presence: true
	validates :security_deposit, presence: true
	validates :max_room_occupancy, presence: true
end
