class RemoveFieldNameFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :my_plants, :string
    remove_column :users, :latest_posts, :text
    remove_column :users, :profile_pic, :text
  end
end
