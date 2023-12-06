module Api
  module V1
    class ReservationsController < ApiController
      before_action :set_reservation, only: %i[destroy]

      # GET /reservations
      def index
        @reservations = current_user.reservations

        render json: @reservations
      end

      # GET /reservations/1
      def show
        render json: @reservation
      end

      # POST /reservations
      def create
        @car = Car.find(params[:car_id])
        if @car.nil?
          render json: { error: 'Car not found' }, status: :not_found
          return
        end

        @reservation = current_user.reservations.new(reservation_params)
        @reservation.car_id = @car.id

        if @reservation.save
          render json: @reservation, status: :ok
        else
          render json: @reservation.errors.full_messages, status: :unprocessable_entity
        end
      end

      # DELETE /reservations/
      def destroy
        if @reservation.destroy
          render json: { success: true, message: 'Reservation deleted' }
        else
          render json: { success: false, errors: @reservation.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_reservation
        @reservation = Reservation.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def reservation_params
        params.require(:reservation).permit(:date, :city)
      end
    end
  end
end
