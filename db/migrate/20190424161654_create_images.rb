class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :player_id
      t.string :image_url
      t.boolean :is_profile_image

      t.timestamps
    end
  end
end
