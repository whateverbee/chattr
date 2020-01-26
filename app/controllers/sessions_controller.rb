class SessionsController < ApplicationController

  def new
    
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id 
      flash[:success] = "You have logged in"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong with your login info"
      render 'new'
    end
  end

  def destroy 
    session[:user_id] = nil 
    flash[:success] = "You have logged out"
    redirect_to login_path
  end
  
end
