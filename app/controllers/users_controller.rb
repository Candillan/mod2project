class UsersController < ApplicationController
    def index
        @users = User.all 
    end

    def show
        @user = User.find(params[:id])
        @reviews = @user.reviews 
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        @user.critic = false
        if @user.save
            flash.notice = "Please log in using your new credentials!"
            redirect_to login_path
        else 
            flash[:errors] = @user.errors.full_messages
        end 
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to edit_user_path(@user)
        end     
    end

    def delete
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password)
    end
end