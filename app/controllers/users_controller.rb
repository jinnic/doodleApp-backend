class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        if user 
            render json: user 
        else 
            render json: { error: "Not found"}, status: 404
        end
    end

    def create 
        user = User.create(user_params)
        if user.valid?
            render json: user
          else
            render json: { errors: user.errors.full_messages }, status: 400
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    private

    def user_params
        params.permit(:user_name, :password_digest, :bio)
    end

end
