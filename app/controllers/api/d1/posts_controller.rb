class Api::D1::PostsController < ApplicationController
    def index
        @posts = Post.where(user_id: params[:user_id])
        render json: @posts
    end

    def show
        @post = Post.find_by(user_id: params[:user_id], id: params[:id])
        render json: @post
    end

    def new
        @post = Post.new({fact: "bullshit", likes: 123, user_id: 1})        
        @post.save!
    end
end

