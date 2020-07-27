class DoodlesController < ApplicationController
    skip_before_action :require_login, only: [:index]

    def index
        doodles = Doodle.all
        render json: doodles, include: ['lines.points']
    end

    def show
        doodle = Doodle.find(params[:id])
        if doodle 
            render json: doodle 
        else 
            render json: { error: "Not found"}, status: 404
        end
    end

    def create 
        doodle = Doodle.create(doodle_params)
        # byebug
        
        #loop through line by its length params[:lines][0][:brushColor]
        # create line
        # params[:lines].each do |line| 
        #     newLine = Line.create(brushColor: line[:brushColor], brushRadius: line[:brushRadius], doodle_id: doodle.id)
        #     line[:points].each{|point| Point.create(x: point[:x], y: point[:y], line_id: newLine.id)}
        #     # byebug
        # end
        
       
        if doodle.valid?
            render json: doodle
          else
            render json: { errors: doodle.errors.full_messages }, status: 400
        end
    end

    def destroy
        doodle = Doodle.find(params[:id])
        doodle.destroy
        render json: doodle
    end

    def update
        doodle = Doodle.find(params[:id])
        doodle.update(doodle_params)
        render json: doodle
    end

    private

    def doodle_params
        params.require(:doodle).permit(:name, :width, :height, :user_id, doodle_data: {})
    end
end
