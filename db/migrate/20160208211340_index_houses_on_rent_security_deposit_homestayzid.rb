class IndexHousesOnRentSecurityDepositHomestayzid < ActiveRecord::Migration
	def change
		add_index :houses, :rent
		add_index :houses, :security_deposit
		add_index :houses, :homestayzid
	end
end
