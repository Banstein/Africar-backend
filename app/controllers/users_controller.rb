class UsersController < ApplicationController
  def create
    user = User.create!(
      username: params['user']['username'],
      password: params['user']['password'],
      password_confirmation: params['user']['password_confirmation']
    )

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        user:
      }
    else
      render json: { status: 500 }
    end
  end
end

#   def login
#     @user = User.find_by(username: user_params[:username])

#     if @user&.authenticate(user_params[:password])
#       token = encode_token({ user_id: @user.id })
#       render json: { user: @user, token: }, status: :ok
#     else
#       render json: { error: 'Invalid username or password' }, status: :unprocessable_entity
#     end
#   end

#   private

#   def user_params
#     params.require(:user).permit(:username, :password)
#   end
