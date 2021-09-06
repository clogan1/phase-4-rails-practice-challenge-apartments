class LeasesController < ApplicationController
  
    #POST to /leases
    def create
        lease = Lease.create!(lease_params)
        render json: lease, status: :created
    end


    #DELETE to /leases/:id
    def destroy
        lease = Lease.find(params[:id])
        lease.destroy
        head :no_content
    end

    private

    def lease_params
        params.permit(:tenant_id, :apartment_id)
    end
end
