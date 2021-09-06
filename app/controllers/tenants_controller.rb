class TenantsController < ApplicationController
    #GET to /tenants
    def index
        render json: Tenant.all
    end

    #GET to /tenants/:id
    def show
        render json: find_tenant
    end

    #POST to /tenants
    def create
        tenant = Tenant.create!(tenant_params)
        render json: tenant, status: :created
    end

    #PATCH to /tenant/:id
    def update
        tenant = find_tenant
        tenant.update!(tenant_params)
        render json: tenant
    end

    #DELETE to /tenants/:id
    def destroy
        tenant = find_tenant
        tenant.destroy
        head :no_content
    end

    private

    def find_tenant
        Tenant.find(params[:id])
    end

    def tenant_params
        params.permit(:name, :age)
    end
end
