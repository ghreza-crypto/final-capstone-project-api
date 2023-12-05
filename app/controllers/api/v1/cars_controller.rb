# frozen_string_literal: true

module Api
  module V1
    class CarsController < ApiController
      # before_action :set_car, only: [:show]

      def index
        @cars = Car.all
        render json: @cars, status: :ok
      end

      def show
        @car = Car.find(params[:id])
        render json: @car, status: :ok
      end

      def create
        @car = current_user.cars.new(car_params)
        if @car.save
          render json: @car, status: :ok
        else
          render json: {
            status: 'failed', data: @car.errors.full_messages
          }, status: :unprocessable_entity
        end
      end

      def destroy
        @car = Car.find(params[:id])
        if @car.destroy
          render json: { message: 'Car deleted successfully', status: 'success' }, status: :ok
        else
          render json: { message: 'Something went wrong', status: 'failed' }
        end
      end

      private

      def car_params
        params.require(:car).permit(
          :photo, :model, :description, :finance_fee,
          :purchase_fee, :amount_payable, :duration, :apr
        )
      end
    end
  end
end
