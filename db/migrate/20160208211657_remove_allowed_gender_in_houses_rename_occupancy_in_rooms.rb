class RemoveAllowedGenderInHousesRenameOccupancyInRooms < ActiveRecord::Migration
	def change
		remove_column :houses, :allowed_gender, :string
		rename_column :rooms, :room_occupancy, :max_room_occupancy
	end
end
