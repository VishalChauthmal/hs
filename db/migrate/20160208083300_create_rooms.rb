class CreateRooms < ActiveRecord::Migration
	def change
		create_table :rooms do |t|
			t.references :house, index: true, foreign_key: true
			t.references :tenant, index: true, foreign_key: true
			t.integer :rent
			t.integer :security_deposit
			t.integer :room_occupancy

			t.timestamps null: false
		end

		add_index :rooms, :rent
		add_index :rooms, :room_occupancy
		add_index :rooms, [:rent, :room_occupancy]
	end
end
