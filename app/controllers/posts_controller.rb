class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save!
            redirect_to posts_path
        else
            render :new
        end
    end

    def edit
    end

    def update
    end

    def show
        @comment = Comment.new
        @comments = @post.comments
        # @comment.user = current_user
    end

    def destroy
    end

    private
      def set_post
          @post = Post.find(params[:id])
      end
      def post_params
          params.require(:post).permit(:title, :content)
      end
end