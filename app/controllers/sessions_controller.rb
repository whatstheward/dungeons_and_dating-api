class SessionsController < ApplicationController
    skip_before_action :authorize!, only: [:create]
  
    def create
    @user = User.find_by(email: params[:email])
    if @user && @user.password = params[:password]
      payload = {user_id: @user.id}
      token = JWT.encode payload, ENV["ENV_SECRET"], 'HS256'
      render json: {token: token}, status: 200
    else
      render json: {errors:["Invalid login credentials"]}
    end
  end

  def destroy
  end
end
