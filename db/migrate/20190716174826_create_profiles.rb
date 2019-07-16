class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :city
      t.string :my_plants
      t.string :favorite_flora
      t.string :latest_posts
      t.string :about_me
      t.string :profile_pic

      t.timestamps
    end
  end
end
