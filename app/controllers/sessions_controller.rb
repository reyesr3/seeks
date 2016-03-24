class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to "/users/#{user.id}"
      else 
        flash[:errors] = ['Invalid email/password']
        redirect_to '/sessions/new'
      end 
 end

   def destroy
    session[:user_id] = nil
    redirect_to '/sessions/new'
  end

end
