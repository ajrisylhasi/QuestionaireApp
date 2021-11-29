class SessionsController < ApplicationController
  def new
  end
  def create
    name = params[:session][:name].strip.downcase
    password = params[:session][:password]

    if name == "admin" && password == "password"
      log_in
      redirect_to questionnaires_path
    else
      flash[:danger] = 'Wrong Credentials'
      redirect_to login_path
    end
  end

  def log_in
    session[:logged] = true
  end

  def destroy 
    session[:logged] = false
    redirect_to root_path
  end
end
