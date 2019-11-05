class AddArtworkToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :artwork, :string
  end
end
