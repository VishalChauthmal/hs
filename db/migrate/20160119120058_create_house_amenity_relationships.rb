class CreateHouseAmenityRelationships < ActiveRecord::Migration
	def change
		create_table :house_amenity_relationships do |t|
			t.references :house, index: true, foreign_key: true
			t.references :amenity, index: true, foreign_key: true

			t.timestamps null: false
		end

		add_index :house_amenity_relationships, [:house_id, :amenity_id], unique: true
	end
end
