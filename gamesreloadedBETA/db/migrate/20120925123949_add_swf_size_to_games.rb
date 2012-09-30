class AddSwfSizeToGames < ActiveRecord::Migration
  def change
    add_column :games, :swfWidth, :integer
    add_column :games, :swfHeight, :integer
  end
end
