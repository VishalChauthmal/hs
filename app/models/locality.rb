class Locality < ActiveRecord::Base
	belongs_to :city
	has_many :houses

	validates :city_id, presence: true
	validates :name, presence: true
end
