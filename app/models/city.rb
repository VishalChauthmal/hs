class City < ActiveRecord::Base
	has_many :localities

	validates :name, presence: true
end
