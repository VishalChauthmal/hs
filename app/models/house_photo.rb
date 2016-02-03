class HousePhoto < ActiveRecord::Base
	belongs_to :house, inverse_of: :photos

	mount_uploader :image, HouseImageUploader

	validates	:house, presence: true
	validates	:image, presence: true
	validate	:image_size

	private
		#Validates the size of a house image
		def image_size
			if image.size > 2.megabytes
				errors.add(:image, "should be less than 2MB")
			end
		end
end
