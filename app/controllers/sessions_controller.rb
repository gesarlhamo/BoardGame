class SessionsController < ApplicationController
  def login_page
  end
  
  def login
    
    user = User.find_by_email(params[:email])
    if user != nil && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_url, :notice => "You have been logged in, #{user.name}."
    else
      flash[:notice] = "Bad email address or password"
      redirect_to login_page_url
      
    end
  end

  
  def logout
    reset_session
    redirect_to root_url
  end
end
