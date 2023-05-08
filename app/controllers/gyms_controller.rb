class GymsController < ApplicationController

  before_action :find_gym , only: [:show, :update, :destroy]

  def show
    render json: @gym
  end

  def update
    @gym.update!(gym_params)
    render json: @gym, status: :accepted
  end

  def destroy
    @gym.destroy
    render json: {}, status: :no_content
  end

  private

  def find_gym 
    @gym = Gym.find(params[:id])
  end

  def gym_params
    params.permit(:name, :address)
  end

end
