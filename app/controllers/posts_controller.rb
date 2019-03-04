class PostsController < ApplicationController

    before_action :authenticate_user!

    def index
        @post = Post.all
    end

    def new
    end

    def edit
        @post = Post.find(params[:id])
        
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to @post
        else 
            render action: 'edit'
        end    
    end

    def show
        @post = Post.find(params[:id])
    end

    def create
        @post = Post.new(post_params)
        @post.save

        redirect_to @post
        #render plain: params[:post].inspect
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to post_path
    end
    private
    def post_params
        params.require(:posts).permit(:title, :text)
    end
end
