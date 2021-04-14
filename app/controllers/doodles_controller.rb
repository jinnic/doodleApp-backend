class DoodlesController < ApplicationController
    skip_before_action :require_login, only: [:index]

    def index
        serialized_doodles = []
        doodles = Doodle.paginate(page: page).order("created_at DESC")
        doodles.each do |dood|
            serialized_doodles << DoodleSerializer.new(dood)
        end
        render json: {
          doodles: serialized_doodles,
          page: page,
          total_pages: Doodle.pages
        }
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

    def page
        params[:page] || 1
    end
end
