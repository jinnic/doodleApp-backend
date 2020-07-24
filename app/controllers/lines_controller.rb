class LinesController < ApplicationController
    def create 
        line = Line.create(line_params)
        if line.valid?
            render json: line
          else
            render json: { errors: line.errors.full_messages }, status: 400
        end
    end

    def destroy
        line = Line.find(params[:id])
        line.destroy
    end

    def update
        line = Line.find(params[:id])
        line.update(line_params)
        render json: line
    end

    private

    def line_params
        params.require(:line).permit(:brushColor, :brushRadius, :doodle_id)
    end
end
