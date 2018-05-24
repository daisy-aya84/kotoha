class PostController < ApplicationController
  def index
    @posts = Post.all
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
