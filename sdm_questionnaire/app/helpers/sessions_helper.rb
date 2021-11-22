module SessionsHelper
  def go_login
    unless session[:logged]
      flash[:danger] = "Log in first"
      redirect_to login_path
    end
  end
  def logged
  	session[:logged]
  end
end
