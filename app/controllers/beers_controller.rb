class BeersController < ApplicationController

    before_action :require_login

    def new
        @beer = Beer.new
    end

    def index
        @beers = Beer.all
    end

    def show
        @beer = Beer.find_by(id: params[:id])
    end

    def create
    end

    def update
    end

    private

    def beer_params
        params.require(:beer).permit(:name, :style, :brewery, :abv)
    end

end
