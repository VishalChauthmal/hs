class CreateNeighborhoods < ActiveRecord::Migration
	def change
		create_table :neighborhoods do |t|
			t.references :locality, index: true, foreign_key: true
			t.integer :neighbor_locality_id
			t.float :distance

			t.timestamps null: false
		end

		add_index :neighborhoods, :neighbor_locality_id
		add_index :neighborhoods, [:locality_id, :neighbor_locality_id], unique: true
		add_index :neighborhoods, [:locality_id, :distance]
		add_index :neighborhoods, [:neighbor_locality_id, :distance]
	end
end
