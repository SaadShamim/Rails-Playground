class ModeratorsController < ApplicationController
  
  def show
    @moderator = Moderator.find(params[:id])
  end
  
  def new
    @moderator = Moderator.new
  end
  
  def create
    @moderator = Moderator.new(params[:moderator])
    if @moderator.save
      sign_in @moderator
      flash[:success] = "Account Created"
      redirect_to @moderator
    else
      render 'new'
    end
  end
  
end
