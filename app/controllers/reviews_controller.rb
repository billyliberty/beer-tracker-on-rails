class ReviewsController < ApplicationController

    before_action :require_login

    def index
        if params[:beer_id]
            @review = Beer.find(params[:beer_id]).review
        else
            @review = Review.all 
        end
    end

    def new
        @review = Review.new(:beer_id => params[:beer_id], :user_id => current_user.id)
    end

    def create
        @review = Review.new(review_params)
        if @review.save
            redirect_to beer_review_path(@review.beer, @review)
        else
            render :new
        end
    end

    def edit
    end

    def update
    end

    def show
    end

    private

    def review_params
        params.require(:review).permit(:rating, :review, :price, :store, :date_of_purchase)
    end

end
