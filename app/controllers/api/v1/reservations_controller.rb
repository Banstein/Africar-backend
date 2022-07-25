class Api::V1::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.order(created_at: :desc)
    render json: @reservations
  end

  def show
    @reservation = Reservation.find(params[:id])
    render json: @reservation
  end

    def create
        @reservation = Reservation.create(reservation_params)
        if @reservation.valid?
            render json: @reservation, status: :created
            else
            render json: { error: 'Reservation failed' }, status: :unprocessable_entity
            end

        end

        def destroy
            @reservation = Reservation.find(params[:id])
            @reservation.destroy
            render json: { message: 'Reservation deleted' }, status: :ok
        end

        def update
            @reservation = Reservation.find(params[:id])
            @reservation.update(reservation_params)
            render json: @reservation
        end

        private
        def reservation_params
            params.require(:reservation).permit(:car_id, :user_id, :city, :date)
        end
    end




   
end
