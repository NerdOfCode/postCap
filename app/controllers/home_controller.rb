class HomeController < ApplicationController
  def index
    if session[:user_id].nil?
      redirect_to :controller => 'home', :action => 'login'
    end
  end
  def login
    if session[:user_id].nil? and not params[:email].nil? and not params[:password].nil?
      @user = User.find_by(email: params[:email])
      if @user.present? && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        session[:email]   = @user.email
        cookies[:email]   = @user.email
        redirect_to :controller => 'home', :action => 'index'
      else
        flash[:alert] = "Invalid username/password"
      end
    end
  end

  def post
  end

  def fun
  end

  def more_fun
  end
end
