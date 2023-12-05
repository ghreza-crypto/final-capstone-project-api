class Api::V1::CarsController < ApiController
    # before_action :set_car, only: [:show]
    
    def index
        @cars = Car.all
        render json: @cars, status: :ok
    end

    def show
        @car = Car.find(params[:id])
        render json: @car, status: :ok
    end

end