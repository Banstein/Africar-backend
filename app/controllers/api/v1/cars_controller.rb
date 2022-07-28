class Api::V1::CarsController < ApplicationController
  before_action :authorized, only: %i[create update destroy]
  before_action :set_car, only: %i[update]

  def index
    @cars = Car.all
    render json: @cars
  end

  def show
    @car = Car.find(params[:id])
    render json: @car
  end

  def create
    @car = Car.create(car_params)
    if @car.valid?
      render json: @car, status: :created
    else
      render json: { error: 'Car Creation failed' }, status: :unprocessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    render json: { message: 'Car deleted' }, status: :ok
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    render json: @car
  end

  private

  def car_params
    params.require(:car).permit(:car_id, :user_id, :name, :description, :picture, :price)
  end
end
