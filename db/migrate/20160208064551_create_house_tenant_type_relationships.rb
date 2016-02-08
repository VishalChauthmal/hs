class CreateHouseTenantTypeRelationships < ActiveRecord::Migration
	def change
		create_table :house_tenant_type_relationships do |t|
			t.references :house, index: true, foreign_key: true
			t.references :tenant_type, index: true, foreign_key: true

			t.timestamps null: false
		end
	end
end
