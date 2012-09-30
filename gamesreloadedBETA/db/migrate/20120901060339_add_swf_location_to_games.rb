class AddSwfLocationToGames < ActiveRecord::Migration
  def change
    add_column :games, :swflocation, :string
  end
end
