class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.string :image
      t.string :username
      t.string :password_digest
      t.string :height
      t.string :position
      t.integer :experience_level
      t.text :description
      t.integer :team_player_id
      t.timestamps
    end
  end
end
