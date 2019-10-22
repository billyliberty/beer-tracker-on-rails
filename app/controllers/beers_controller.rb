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

end
