class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new params.require(:post).permit(:title, :body)
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def show
    @post = Post.find params[:id]
  end
end
