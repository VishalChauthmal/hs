class Locality < ActiveRecord::Base
	belongs_to :city
	has_many :houses
	has_many :neighborhoods, dependent: :destroy
	has_many :neighbor_localities, through: :neighborhoods, source: :neighbor_locality

	validates :city_id, presence: true
	validates :name, presence: true
end
