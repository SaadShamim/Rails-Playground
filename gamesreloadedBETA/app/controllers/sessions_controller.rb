class SessionsController < ApplicationController
  
  def new
  end

  def create
    moderator = Moderator.find_by_email(params[:session][:email].downcase)
    if moderator && moderator.authenticate(params[:session][:password])
      sign_in moderator
      redirect_to moderator
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end
  
end
