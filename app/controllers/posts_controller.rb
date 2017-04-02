class PostsController < ApplicationController
    def index
        
        @posts = Post.all
    end
    
    def new
        @post = Post.new
        @posts = Post.all
    end

    
    def create
        post=Post.new(post_params)
        post.save
        redirect_to posts_new_path
    end
    
    
    private
    
    def post_params
        params.require(:post).permit(:name,:content)

    end

end

