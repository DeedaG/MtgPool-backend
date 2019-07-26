class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params[:session][:username])
#    binding.pry
      if @user && @user.authenticate(params[:session][:password])
        session[:user_id]= @user.id
        render json: UserSerializer.new(@user), status: :ok
      else
        # binding.pry
        render json: {
          error: "Invalid Credentials"
        }
      end
    end

    def get_current_user
      if logged_in?
        # user_json = UserSerializer.new(current_user).serialized_json
        render json: UserSerializer.new(current_user)
        # render json: user_json
      else
        render json: {
          error: "Not Logged In"
        }
      end
    end

    def destroy
      session.clear
      render json: {
        notice: "succesfully logged out"
      }, status: :ok
    end
end
