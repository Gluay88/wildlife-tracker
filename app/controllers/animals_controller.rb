class AnimalsController < ApplicationController
    def index
        animal = Animal.all
        render json: animal
    end
    def show 
        animal = Animal.find(params[:id])
        render json: animal
    end
end
