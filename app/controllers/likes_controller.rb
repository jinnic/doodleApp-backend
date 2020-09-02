class LikesController < ApplicationController
    skip_before_action :require_login, only: [:index]

    def index 
        likes = Like.all 
        render json: likes
    end

    def create 
        like = Like.find_or_initialize_by(user_id: like_params[:user_id], doodle_id: like_params[:doodle_id])

        if like.persisted? 
            like.destroy
            render json: like.id
        else
            like.save 
            render json:like
        end
    end

    def destroy
       like = Like.find(params[:id])
       like.destroy
       render json:like
    end

    private
    def already_liked?
        Like.where(user_id: params[:user_id], doodle_id:
        params[:doodle_id]).exists?
      end

    def like_params
        params.require(:like).permit(:user_id, :doodle_id)
    end
end
