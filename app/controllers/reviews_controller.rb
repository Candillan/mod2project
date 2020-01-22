class ReviewsController < ApplicationController

    def index 
        @reviews = Review.all
    end 

    def show
        @review = Review.find(params[:id])
    end 

    def new
        @review = Review.new
        @games = Game.all
    end

    def create
        #random user ID for now - will want to use cookies to set the user id
        id = User.all.sample.id
        @review = Review.new(review_params)
        @review.user_id = id
        byebug
        if @review.save
            redirect_to review_path(@review)
        else
            flash[:errors] = @review.errors.full_messages
            redirect_to new_review_path
        end
    end

    def edit

    end 

    def update

    end 

    def destroy

    end 

    private

    def review_params
        params.require(:review).permit(:title, :rating, :content, :game_id)
    end 


end 