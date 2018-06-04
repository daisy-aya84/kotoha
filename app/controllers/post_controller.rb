class PostController < ApplicationController
  before_action :authenticate_user
  
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/post/index")
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    
    redirect_to("/post/index")
  end
end
