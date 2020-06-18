class SessionsController < ApplicationController
  def create
    @user = User.find_by_username(login_params[:username])
    if @user && @user.password == login_params[:password]
      session[:current_user] = @user

      redirect_to products_path, notice: "Hello #{@user.username}!"
    else
      redirect_to root_path, notice: "Invalid username or password"
    end
  end

  private 

  def login_params
    params.require(:login).permit(:username, :password)      
  end
end
