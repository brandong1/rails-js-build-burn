class OwnersController < ApplicationController
    def index
        @owners = Dog.all 
        render json: @owners 
    end

    def show
        @owner = Dog.find(params[:id])
        render json: @owner, include: :dog
    end

    def create
        @owner = Dog.create(name: params[:name], owner_id: params[:owner])
        redirect_to 'http://localhost:3000/owners'
    end
end
