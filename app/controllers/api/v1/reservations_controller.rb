module Api
  module V1
  class ReservationsController < ApiController
    before_action :set_reservation, only: %i[ show destroy ]

    # GET /reservations
    def index
      @reservations = Reservation.all

      render json: @reservations
    end

    # GET /reservations/1
    def show
      render json: @reservation
    end

    # POST /reservations
    def create
      @reservation = Reservation.new(reservation_params)

      if current_user
          @reservation.user_id = current_user.id

      if @reservation.save
        render json: @reservation, status: :created, location: @reservation
      else
        render json: @reservation.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /reservations/1
    # def update
    #   if @reservation.update(reservation_params)
    #     render json: @reservation
    #   else
    #     render json: @reservation.errors, status: :unprocessable_entity
    #   end
    # end

    # DELETE /reservations/1
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
        params.require(:reservation).permit(:user_id, :car_id, :date, :city)
      end
    end
  end
end