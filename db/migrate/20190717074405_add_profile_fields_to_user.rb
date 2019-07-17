class AddProfileFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :location, :string
    add_column :users, :my_plants, :string
    add_column :users, :fav_flora, :string
    add_column :users, :latest_posts, :text
    add_column :users, :about_me, :text
    add_column :users, :profile_pic, :text
  end
end
