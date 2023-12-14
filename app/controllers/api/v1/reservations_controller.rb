module Api
  module V1
    class ReservationsController < ApiController
      before_action :set_reservation, only: %i[destroy]

      # GET /reservations
      def index
        @reservations = Reservation.accessible_by(current_ability)
        if @reservations.empty?
          render json: { status: 'No reservation found' }, status: :not_found
        else
          render json: @reservations, status: :ok
        end
      end

      # GET /reservations/1
      def show
        render json: @reservation
      end

      # POST /reservations
      def create
        # @car = Car.find(params[:car_id])
        @reservation = current_user.reservations.new(reservation_params)
        # @reservation.car_id = @car.id

        # Check if the user has the ability to create a reservation
        if can?(:create, @reservation) && @reservation.save
          render json: @reservation, status: :ok
        else
          render json: { error: 'Unauthorized to create reservation' }, status: :forbidden
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
        params.require(:reservation).permit(:date, :city, :car_id, :user_id)
      end
    end
  end
end
