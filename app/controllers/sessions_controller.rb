class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user=User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
       session[:user_id]=@user.id
       redirect_to root_path, notice: "logged in!"
    else
       flash.now.alert "wrong email or par"
       render :new
    end
  end
  
  def destroy
     session[:user_id]=nill
     redirect_to root_path, notice:"logged out!"
  end
end
