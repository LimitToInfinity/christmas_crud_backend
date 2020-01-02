class RatingsController < ApplicationController

    before_action :find_rating, only: [:show, :update, :destroy]

    def index
        @ratings = Rating.all
        render json: @ratings
    end

    def show
        render json: @rating
    end

    def create
        @rating = Rating.create(rating_params)
        render json: @rating
    end

    def update
        @rating.update(rating_params)
    end

    def destroy
        @rating.destroy
    end

    private

    def find_rating
        @rating = Rating.find(params[:id])
    end

    def rating_params
        params.require(:rating).permit(:stars, :description, :present_id)
    end

end
