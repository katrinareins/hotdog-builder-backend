class UsersController < ApplicationController
    def create
        user = User.create(user_params)
        render json: user
    end

    def index
        users = User.all
        render json: users 
    end 

    def destroy
        data = {message: "User has been deleted"}
        user = User.find(params[:id])
        user.delete()
        render json: data 
      end 

    private

    def user_params
      params.require(:user).permit(:id, :name)
    end 
end
