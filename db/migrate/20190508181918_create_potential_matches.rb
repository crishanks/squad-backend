class CreatePotentialMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :potential_matches do |t|
      t.integer :player_id
      t.integer :player_match_id

      t.timestamps
    end
  end
end
