class AddAuthorUrlToGames < ActiveRecord::Migration
  def change
    add_column :games, :authorUrl, :string
  end
end
