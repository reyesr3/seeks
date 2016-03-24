class UsersController < ApplicationController
    before_action :require_login, except: [:new, :create]
    before_action :require_login, except: [:new, :create]
    before_action :require_correct_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def new
    render :new 
  end

  def create
    user = User.new(user_params)
    if user.save
        session[:user_id] = user.id
        redirect_to "/users/#{user.id}"
    else 
      flash[:errors] = user.errors.full_messages
      redirect_to "/users/new"
    end
  end

  def show
    @user = User.find(params[:id])
    @secret = @user.secrets
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    if user.update(user_params)
      flash[:message] = "Successfully Updated!"
      redirect_to "/users/#{user.id}"
    else
      redirect_to "/users/#{user.id}"
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    session[:user_id] = nil
    redirect_to '/sessions/new'
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
