class TenantType < ActiveRecord::Base
	has_many :house_tenant_type_relationships, dependent: :destroy
	has_many :houses, through: :house_tenant_type_relationships

	validates :name, presence: true
end
