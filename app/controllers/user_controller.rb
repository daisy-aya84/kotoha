class UserController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    @user = User.find_by(id: params[:id])
    
  end
  
  def new
    @user = User.new
    
  end
  
  def create
    @user = User.new(name: params[:name], email: params[:email])
    
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/user/index")
    else
      render("user/new")
    end
    
  end
  
  def edit
    @user = User.find_by(id: params[:id])
  end
  
  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    if @user.save
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/user/#{@user.id}/show")
    else
      render("user/edit")
    end
  end
  
  def login_form
    
  end
  
  def login
    @user = User.find_by(email: params[:email],
                        password: params[:password])
    if @user
      flash[:notice] = "ログインしました"
      redirect_to("/post/index")
    else
      @error_message=  "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      
      render("user/login_form")
    end
    
  end
end
