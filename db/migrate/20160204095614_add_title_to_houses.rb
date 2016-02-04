class AddTitleToHouses < ActiveRecord::Migration
	def change
		add_column :houses, :title, :string
	end
end
