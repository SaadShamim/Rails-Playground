class AddRememberTokenToModerators < ActiveRecord::Migration
  def change
    add_column :moderators, :remember_token, :string
    add_index  :moderators, :remember_token
  end
end
