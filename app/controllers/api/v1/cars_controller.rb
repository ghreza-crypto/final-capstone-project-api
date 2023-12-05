class Api::V1::CarsController < ApiController
    
    def index
        @cars = Car.all
        render json: @cars, status: :ok
    end
end