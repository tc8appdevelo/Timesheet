class SillyController < ApplicationController
  skip_before_action :verify_authenticity_token
  def fun
    render json: params[:message]
  end

  def time
    render json: params
  end

  def super
    render json: params
  end

  # params has
  # 1 Query string
  # 2 Request body
  # 3 URL Params/route params (wildcards)
end