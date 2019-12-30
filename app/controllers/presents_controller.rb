class PresentsController < ApplicationController

    def index
        @presents = Present.all
        render json: PresentSerializer.new(@presents)
    end

end
