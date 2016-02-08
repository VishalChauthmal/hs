class HouseTenantTypeRelationship < ActiveRecord::Base
	belongs_to :house
	belongs_to :tenant_type

	validates :house_id, presence: true
	validates :tenant_type_id, presence: true
end
