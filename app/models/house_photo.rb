class HousePhoto < ActiveRecord::Base
	belongs_to :house

	mount_uploader :image, HouseImageUploader

	validates	:house_id, presence: true
	validates	:image, presence: true
	validate	:image_size

	private
		#Validates the size of a house image
		def image_size
			if image.size > 5.megabytes
				errors.add(:image, "should be less than 5MB")
			end
		end
end
