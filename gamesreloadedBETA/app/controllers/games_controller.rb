class GamesController < ApplicationController
  before_filter :signed_in_user, only: [:new, :create, :edit, :update]
  
  def index
    @newGames = Game.order("created_at DESC").limit(3)
    @casualGames = Game.where("category = 'casual'").limit(9)
    @actionGames = Game.where("category = 'action'").limit(8)
    @strategyGames = Game.where("category = 'strategy'").limit(9)
    @adventureGames = Game.where("category = 'adventure'").limit(8)
    @puzzleGames = Game.where("category = 'puzzle'").limit(9)
  end
  
  def show
     @game = Game.find(params[:id])
  end
  
  def edit
     @game = Game.find(params[:id])
  end
  
  def update
    @game = Game.find(params[:id])
    if @game.update_attributes(params[:game])
      flash[:success] = "Profile updated"
      redirect_to @game
    else
      render 'edit'
    end
  end
  
  def new
    @game = Game.new
  end
  
   def create
    @game = Game.new(params[:game])
    if @game.save
       flash[:success] = "Game Submitted"
       redirect_to @game
    else
      render 'new'
    end
  end
  
  def destroy
    Game.find(params[:id]).destroy
    flash[:success] = "Game deleted"
    redirect_to editgames_path
  end
  
  private

    def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end
  
  
end
