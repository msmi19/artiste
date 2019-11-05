class RemoveArtworkFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :artwork, :string
  end
end
