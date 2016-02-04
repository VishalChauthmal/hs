class CreateTenantVisits < ActiveRecord::Migration
	def change
		create_table :tenant_visits do |t|
			t.references :house, index: true, foreign_key: true
			t.string :name
			t.string :email
			t.string :phone
			t.date :date
			t.time :time
			t.string :company_rep
			t.string :status

			t.timestamps null: false
		end

		add_index :tenant_visits, :email
		add_index :tenant_visits, :phone
		add_index :tenant_visits, :date
		add_index :tenant_visits, [:date, :time]
	end
end
