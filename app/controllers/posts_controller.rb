class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new

  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
    # render plain: params[:post].inspect
  end

  private def post_params
      params.require(:post).permit(:title, :body)

  end

end
