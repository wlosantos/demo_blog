class PostsController < ApplicationController

    def index
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(posts_params)

        if @post.save
        else
        end
    end

    private
    def posts_params
        params.require(:posts).permit(:title, :description)
    end

end
