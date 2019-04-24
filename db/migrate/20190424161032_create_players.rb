class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.integer :team_player_id
      t.string :name
      t.string :height
      t.string :position
      t.integer :experience_level
      t.text :description

      t.timestamps
    end
  end
end
