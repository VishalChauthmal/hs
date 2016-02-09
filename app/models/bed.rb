class Bed < ActiveRecord::Base
	belongs_to :room
	belongs_to :tenant

	validates :room, presence: true
	validates :rent, presence: true
	validates :security_deposit, presence: true
end
