class Api::D1::PostsController < ApplicationController
    def index
        @posts = Post.all()
        render json: @posts
    end

    def show
        render json: @post
    end

    def new
            
    end
end

