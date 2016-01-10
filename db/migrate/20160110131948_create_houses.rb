class CreateHouses < ActiveRecord::Migration
	def change
		create_table :houses do |t|
			t.string :type
			t.references :owner, index: true, foreign_key: true
			t.integer :bhk
			t.integer :no_of_beds
			t.string :allowed_gender
			t.references :locality, index: true, foreign_key: true
			t.integer :pincode
			t.float :lat
			t.float :long
			t.text :address
			t.string :landmark

			t.timestamps null: false
		end

		add_index :houses, :allowed_gender
    add_index :houses, [:locality_id, :allowed_gender]
	end
end
