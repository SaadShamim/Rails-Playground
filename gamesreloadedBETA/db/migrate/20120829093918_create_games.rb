class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.integer :views
      t.integer :ratings
      t.string :author

      t.timestamps
    end
  end
end
