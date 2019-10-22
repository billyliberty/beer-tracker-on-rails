class BeersController < ApplicationController

    before_action :require_login

    def new
        @beer = Beer.new
    end

    def index
        @beers = Beer.all
    end

    def show
    end

    def create
    end

    def update
    end

end
