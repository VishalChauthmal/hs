class Neighborhood < ActiveRecord::Base
	belongs_to :locality
	belongs_to :neighbor_locality, class_name: "Locality"

	validates :locality_id, presence: true
	validates :neighbor_locality_id, presence: true

	validate :neighborhoods_pair_cannot_be_repeated

	private
		def neighborhoods_pair_cannot_be_repeated
			if Neighborhood.exists?(:locality_id => [self.locality_id, self.neighbor_locality_id], 
															:neighbor_locality_id => [self.locality_id, self.neighbor_locality_id])
				errors.add(:base, 'Neighborhoods pair already exists')
			end
		end
end
