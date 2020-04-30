class UsersController < ApplicationController
    skip_before_action :authorize!, only: [:create]

    def show
        @user = User.find_by(id: params[:id])
        user_json = UserSerializer.new(@user).serialized_json
        render json: user_json
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            payload = {user_id: @user.id}
            token = JWT.encode payload, ENV["ENV_SECRET"], 'HS256'
            render json: {token: token}, status: 200
        else
            render json: @user.errors.full_messages
        end
    end

    private
    
    def user_params
        params.permit(:first_name, :last_name, :email, :password)
    end
end
