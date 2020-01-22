class GamesController < ApplicationController
    def index
        @games = Game.all 
    end

    def show
        @game = Game.find(params[:id])
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def delete
    end

    private 

    def game_params(*args)
        params.require(:game).permit(*args)
    end
end