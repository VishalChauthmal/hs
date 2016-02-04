class HouseListingRequest < ActiveRecord::Base
	before_save {
		self.email = email.downcase
		self.phone = phone.gsub(/\s+/, "")
	}

	validates :name, presence: true, length: { maximum: 100 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	# validates :email, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
	validates :phone, presence: true

	protected
	def email_required?
		false
	end
end
