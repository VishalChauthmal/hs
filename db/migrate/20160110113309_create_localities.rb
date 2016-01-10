class CreateLocalities < ActiveRecord::Migration
	def change
		create_table :localities do |t|
			t.string :name
			t.references :city, index: true, foreign_key: true

			t.timestamps null: false
		end

		add_index :localities, :name
		add_index :localities, [:name, :city_id]
	end
end
