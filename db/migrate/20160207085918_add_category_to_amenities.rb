class AddCategoryToAmenities < ActiveRecord::Migration
	def change
		add_column :amenities, :category, :string

		add_index :amenities, :category
	end
end
