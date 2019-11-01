class ReviewsController < ApplicationController

    before_action :require_login

    def index
    end

    def new
    end

    def create
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
