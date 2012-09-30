class AddIndexToModeratorsEmail < ActiveRecord::Migration
  def change
    add_index :moderators, :email, unique: true
  end
end
