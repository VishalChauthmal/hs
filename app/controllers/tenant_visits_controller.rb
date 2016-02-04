class TenantVisitsController < ApplicationController
	def create
		house = House.find(params[:house_id])
		@tenant_visit = house.tenant_visits.build(tenant_visit_params)
		if @tenant_visit.save
			flash[:success] = "Thank you for scheduling a visit. We will contact you soon."
			redirect_to house
		else
			flash[:danger] = "You seem to have entered incorrect details. Please try again."
			@house = house
			render 'houses/show'
		end
	end

	private

		def tenant_visit_params
			params.require(:tenant_visit).permit(:name, :phone, :email, :date, :time, :company_rep, :status)
		end
end
