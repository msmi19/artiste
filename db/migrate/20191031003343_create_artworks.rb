class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title
      t.text :caption
      t.integer :user_id
      t.integer :category_id
      t.decimal :price
      t.string :image_url
      t.timestamps
    end
  end
end
