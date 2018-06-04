class PostController < ApplicationController
  before_action :authenticate_user
  before_action :encure_correct_user, {only: [:destroy]}
  
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def show
    @post = Post.find_by(id: params[:id])
    @user = @post.user
  end
  
  def create
    @post = Post.new(content: params[:content], user_id: @current_user.id)
    @post.save
    redirect_to("/post/index")
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    
    redirect_to("/post/index")
  end
  
  def encure_correct_user
    @post = Post.find_by(id: params[:id])
    if @current_user.id != @post.user_id
      flash[:notice] = "権限がありません"
      redirect_to("/post/index")
    end
  end
  
end
