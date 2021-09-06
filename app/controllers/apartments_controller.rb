class ApartmentsController < ApplicationController

    #GET to /apartments
    def index
        render json: Apartment.all
    end

    #GET to /apartments/:id
    def show
        render json: find_apartment
    end

    #POST to /apartments
    def create
        apartment = Apartment.create!(apartment_params)
        render json: apartment, status: :created
    end

    #PATCH to /apartments/:id
    def update
        apartment = find_apartment
        apartment.update!(apartment_params)
        render json: apartment
    end

    #DELETE to /apartments/:id
    def destroy
        apartment = find_apartment
        apartment.destroy
        head :no_content
    end

    private

    def find_apartment
        Apartment.find(params[:id])
    end

    def apartment_params
        params.permit(:number, :name)
    end

end
