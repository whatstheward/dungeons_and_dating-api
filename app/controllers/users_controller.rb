class UsersController < ApplicationController
    skip_before_action :authorize!, only: [:create]

    def show
        @user = User.find_by(id: params[:id])
        user_json = UserSerializer.new(@user).serialized_json
        render json: user_json
    end
end
