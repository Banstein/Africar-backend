class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      token = encode_token({ user_id: user.id })
      render json: { user:, token: }, status: :ok
    else
      render json: { error: 'Invalid username or password' }, status: :unprocessable_entity
    end
  end

  def logged_in
    if logged_in?
      render json: { message: 'logged in' }, status: :ok
    else
      render json: { error: 'Not logged in' }, status: :unauthorized
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
