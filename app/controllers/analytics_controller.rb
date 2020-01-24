class AnalyticsController < ApplicationController


    def index
        @games = Game.all 
        @users = User.all
        @reviews = Review.all
        @developers = Developer.all
        if session[:user_id]
            @user = User.find(session[:user_id])
        end
        if session[:developer_id]
            @developer = Developer.find(session[:developer_id])
        end
    end 

end 