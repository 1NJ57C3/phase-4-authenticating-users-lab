class UsersController < ApplicationController
    def show
        render json: User.find(session[:user_id])
    end
end
