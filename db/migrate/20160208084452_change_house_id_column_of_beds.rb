class ChangeHouseIdColumnOfBeds < ActiveRecord::Migration
	def up
		remove_column :beds, :house_id, :references, { index: true, foreign_key: true }
	end

	def down
		change_table :beds do |t|
			t.references :house, index: true, foreign_key: true
		end
	end
end
