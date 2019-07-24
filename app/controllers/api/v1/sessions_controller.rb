class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:session][:username])
    binding.pry
      if @user && @user.authenticate(params[:session][:password])
        session[:user_id]= @user.id
        render json: @user
      else
        # binding.pry
        render json: {
          error: "Invalid Credentials"
        }
      end
    end

    def get_current_user
      if logged_in?
        render json: current_user
      else
        render json: {
          error: "Not Logged In"
        }
      end
    end
end
