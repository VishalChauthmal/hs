class AddTenantIdToHouses < ActiveRecord::Migration
	def change
		add_reference :houses, :tenant, index: true, foreign_key: true
	end
end
