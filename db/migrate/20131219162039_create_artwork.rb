class CreateArtwork < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.integer :artist_id, null: false
      t.date :created_date, null: false
      t.date :listed_date, null: false
      t.decimal :asking_price, null: false
      t.integer :medium_id, null: false
      t.date :purchase_date
      t.integer :customer_id
      t.decimal :selling_price
    end
  end
end
