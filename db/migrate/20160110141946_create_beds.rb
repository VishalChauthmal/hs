class CreateBeds < ActiveRecord::Migration
	def change
		create_table :beds do |t|
			t.references :house, index: true, foreign_key: true
			t.references :tenant, index: true, foreign_key: true
			t.integer :rent
			t.integer :security_deposit
			t.integer :room_occupancy

			t.timestamps null: false
		end

		add_index :beds, :rent
		add_index :beds, :room_occupancy
		add_index :beds, [:rent, :room_occupancy]
	end
end
