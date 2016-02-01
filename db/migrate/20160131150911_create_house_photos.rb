class CreateHousePhotos < ActiveRecord::Migration
	def change
		create_table :house_photos do |t|
			t.references :house, index: true, foreign_key: true
			t.string :image
			t.string :caption

			t.timestamps null: false
		end
	end
end
