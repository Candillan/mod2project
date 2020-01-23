class GamesController < ApplicationController
    def index
        @games = Game.all 
    end
 
    def b3show
        @game = Game.find(1)
        @developer = @game.developer 
    end

    def wowshow
        @game = Game.find(2)
        @developer = @game.developer 
    end

    def scshow
        @game = Game.find(3)
        @developer = @game.developer 
    end

    def aoeshow
        @game = Game.find(4)
        @developer = @game.developer 
    end

    def ssbshow
        @game = Game.find(5)
        @developer = @game.developer 
    end

    def civshow
        @game = Game.find(6)
        @developer = @game.developer 
    end

    def skyrimshow
        @game = Game.find(7)
        @developer = @game.developer 
    end

    def horizonshow
        @game = Game.find(8)
        @developer = @game.developer 
    end

    def morrowindshow
        @game = Game.find(9)
        @developer = @game.developer 
    end

    def oblivionshow
        @game = Game.find(10)
        @developer = @game.developer 
    end

    def show
        @game = Game.find(params[:id])
        @developer = @game.developer
    end

    def new
        @game = Game.new
    end

    def create
        id = session[:developer_id]
        @game = Game.new(game_params)
        #@game.developer_id = Developer.all.sample.id
        @game.developer_id = id
        if @game.save
            redirect_to games_path
        else 
            flash[:errors] = @game.errors.full_messages
            redirect_to new_game_path
        end 
    end

    def edit
    end

    def update
    end

    def delete
    end

    private 

    def game_params
        params.require(:game).permit(:year, :developer_id, :description, :name)
    end
end