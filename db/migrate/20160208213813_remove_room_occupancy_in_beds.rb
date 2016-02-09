class RemoveRoomOccupancyInBeds < ActiveRecord::Migration
	def change
		remove_column :beds, :room_occupancy, :integer
	end
end
