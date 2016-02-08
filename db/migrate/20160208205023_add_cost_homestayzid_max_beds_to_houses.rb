class AddCostHomestayzidMaxBedsToHouses < ActiveRecord::Migration
	def change
		add_column :houses, :rent, :integer
		add_column :houses, :security_deposit, :integer
		add_column :houses, :homestayzid, :string
		rename_column :houses, :no_of_beds, :max_no_of_beds
	end
end
