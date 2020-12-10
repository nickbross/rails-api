class Api::D1::UsersController < ApplicationController
    def index 
        @users = User.all()
        render json: @users
    end
    
    def show 
        @user = User.find(params[:id])
        render json: @user  
    end

    def new
        @user = User.new({username:"Dew", password:"password"})
        @user.save!
    end
end
