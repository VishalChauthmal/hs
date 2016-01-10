class Locality < ActiveRecord::Base
	belongs_to :city

	validates :city_id, presence: true
	validates :name, presence: true
end
