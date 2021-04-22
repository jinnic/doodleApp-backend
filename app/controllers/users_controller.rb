class UsersController < ApplicationController
    skip_before_action :require_login, only: [:create, :index, :show]

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])

        serialized_doodles = []
        doodles = user.doodles.paginate(page: page)
        doodles.each do |dood|
            serialized_doodles << DoodleSerializer.new(dood)
        end
        render json: {
          user: user, 
          doodles: serialized_doodles,
          page: page,
          total_pages: user.doodles.pages
        }

    end

    def create 
        user = User.create(user_params)
        if user.valid?
            token = encode_token({user_id: user.id})
            render json: { user: user, token: token }
          else
            render json: { error: user.errors.full_messages }, status: 400
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: user
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    private

    def user_params
        params.permit(:user_name, :password, :bio)
    end

    def page
        params[:page] || 1
    end

end
