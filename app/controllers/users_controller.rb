class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    user = User.new(user_params)
    if user.save
      render json: { user: user, message: "User successfully created" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
