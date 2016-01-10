class CreateOwners < ActiveRecord::Migration
	def change
		create_table :owners do |t|
			t.string :name
			t.string :email
			t.string :password_digest

			t.timestamps null: false
		end

		add_index :owners, :email, unique: true
	end
end
