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
        @beer = Beer.find_or_create_by(beer_params)
        if @beer.valid?
            @beer.save
            redirect_to @beer
        else
            render :new
        end
    end

    def update
        @beer = Beer.find_by(id: params[:id])
        @beer.update(beer_params)
        redirect_to @beer
    end

    private

    def beer_params
        params.require(:beer).permit(:name, :style, :brewery, :abv)
    end

end
