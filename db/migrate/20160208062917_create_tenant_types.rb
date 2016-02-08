class CreateTenantTypes < ActiveRecord::Migration
	def change
		create_table :tenant_types do |t|
			t.string :name

			t.timestamps null: false
		end

		add_index :tenant_types, :name
	end
end
