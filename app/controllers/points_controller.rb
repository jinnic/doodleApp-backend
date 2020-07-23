class PointsController < ApplicationController

    def index
        points = Point.all 
        render json: points
    end
    
    def create 
        point = Point.create(point_params)
        if point.valid?
            render json: point
          else
            render json: { errors: point.errors.full_messages }, status: 400
        end
    end

    def destroy
        point = Point.find(params[:id])
        point.destroy
    end

    def update
        point = Point.find(params[:id])
        point.update(point_params)
        render json: point
    end

    private

    def point_params
        params.permit(:x, :y, :line_id)
    end

end
