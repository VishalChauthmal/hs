class ChangeColumnsOfHouses < ActiveRecord::Migration
	def change
		rename_column :houses, :type, :category
		change_column :houses, :pincode, :string
	end
end
