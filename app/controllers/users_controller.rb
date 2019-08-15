class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def user_reviews
        @u = User.find(params[:id])
        @r = @u.reviews
        @rb = [@r]

        @r.each{ |review|
            @b = Bodega.find(review.bodega_id)
            @rb.push(@b)
        }
        render json: @rb
    end


end