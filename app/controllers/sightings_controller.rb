class SightingsController < ApplicationController
    def index

        sightings = Sighting.where(date: params[:start_date]..params[:end_date])
        render json: sightings
    end

    def show
        animal = Animal.find(params[:animal_id])
        sighting = animal.sightings.find(params[:id])
        render json: sighting
    end

    def create 
        animal = Animal.find(params[:animal_id])
        sighting = animal.sightings.create(sighting_params)
        if sighting.valid?
            render json: sighting
        else
            render json: sighting.errors
        end
    end

    def update
        animal = Animal.find(params[:animal_id])
        sighting = animal.sightings.find(params[:id])
        sighting.update(sighting_params)
        if sighting.valid?
            render json: sighting
        else
            render json: sighting.errors
        end
    end

    def destroy
        animal = Animal.fine(params[:animal_id])
        sighting = animal.sightings.find(params[:id])
        if sighting.destroy
            render json: sighting
        else
            render json: sighting.errors
        end
    end

    private 
    def sighting_params 
        params.require(:sighting).permit(:id, :date, :latitude, :longtitude, :animal_id)
    end
end
