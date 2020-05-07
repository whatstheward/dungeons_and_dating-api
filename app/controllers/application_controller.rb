class ApplicationController < ActionController::API
    before_action :authorize!

    def current_user
        token = request.headers['auth-token']
        return nil unless token
        payload = JWT.decode(token, ENV['ENV_SECRET']).first
        User.find_by(id: payload['user_id'])
    end

    private 

    def authorize!
        unless current_user
            render json: { errors: ['You are not logged in.'] },
                status: :unauthorized
        end
    end
end
