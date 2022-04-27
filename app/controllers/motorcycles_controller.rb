class MotorcyclesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    render json: params
  end

  def create
    @motorcycle = Motorcycle.new(motorcycle_params)
    if @motorcycle.save
      render json: @motorcycle
    end

  end

  private
    def motorcycle_params
      params.permit(:make, :model)
    end
end