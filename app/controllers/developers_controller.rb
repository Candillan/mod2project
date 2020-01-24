class DevelopersController < ApplicationController
    def index
        @developers = Developer.all 
    end

    def show
        @developer = Developer.find(params[:id])
        @games = @developer.games
    
    end

    def new
        @developer = Developer.new
    end

    def create
        @developer = Developer.new(developer_params)
        if @developer.save
            flash.notice = "Please log in using your new credentials!"
            redirect_to login_path
        else 
            flash[:errors] = @developer.errors.full_messages
        end 
    end

    def edit
        @developer = Developer.find(params[:id])
    end

    def update
        @developer = Developer.find(params[:id])
        if @developer.update(developer_params)
            redirect_to developer_path(@developer)
        else
            flash[:errors] = @developer.errors.full_messages
            redirect_to edit_developer_path(@developer)
        end     
    end

    def delete
    end

    private 

    def developer_params
        params.require(:developer).permit(:username, :password, :age, :studio, :experience)
    end
end