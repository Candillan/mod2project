class AnalyticsController < ApplicationController


    def index
        @games = Game.all 
        @users = User.all
        @reviews = Review.all
        @developers = Developer.all
    end 

end 