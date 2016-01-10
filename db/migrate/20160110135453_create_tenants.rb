class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end

    add_index :tenants, :email, unique: true
  end
end
