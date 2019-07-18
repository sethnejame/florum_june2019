class RemoveFieldNameFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :my_plants, :string
  end
end
