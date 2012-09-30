class StaticPagesController < ApplicationController
  before_filter :signed_in_user, only: [:editgames]
  
  def lunchbreak
    @casualGames = Game.where("category = 'casual'")
  end

  def action
    @actionGames = Game.where("category = 'action'").limit(8)
  end

  def adventure
     @adventureGames = Game.where("category = 'adventure'").limit(8)
  end

  def strategy
    @strategyGames = Game.where("category = 'strategy'").limit(9)
  end

  def puzzle
    @puzzleGames = Game.where("category = 'puzzle'").limit(9)
  end
  
  def new
    @newGames = Game.limit(20)
  end

  def gamesforyoursite
  end

  def contact
  end
  
  def editgames
    @games = Game.all
  end
  
  private

    def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end
  
end
