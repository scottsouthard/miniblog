class PostsController < ApplicationController

  def show
    @posts = Post.all
  end

  def new
    @post = Post.new
    render :"posts/new"
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to :root
    else
      render :"posts/new"
    end
  end

  private

  def post_params
   params.require(:post).permit(:title, :description)
  end

end
