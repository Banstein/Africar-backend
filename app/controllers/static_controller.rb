class StaticController < ApplicationController
  def home
    render json: { status: 'Everything is fine' }
  end
end
