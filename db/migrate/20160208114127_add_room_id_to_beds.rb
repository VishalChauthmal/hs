class AddRoomIdToBeds < ActiveRecord::Migration
	def change
		add_reference :beds, :room, index: true, foreign_key: true
	end
end
