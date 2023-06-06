class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find_by(id: params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new
        @post.title = params[:title]
        @post.content = params[:content]
        @post.user_id = params[:user_id]
        @post.post_id = params[:post_id]

        if @post.save
            redirect_to posts_url
        else
            render 'new'
        end
    end

    #get
    
end
