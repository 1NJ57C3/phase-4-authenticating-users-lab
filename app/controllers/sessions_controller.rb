class SessionsController < ApplicationController
    def create
        u = User.find_by(username: params[:username])
        session[:user_id] = u.id
        render json: u
    end

    def destroy
        session.delete(:user_id)
        head :no_content #204
    end
end
