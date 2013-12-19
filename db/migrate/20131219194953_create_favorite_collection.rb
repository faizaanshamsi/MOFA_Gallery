class CreateFavoriteCollection < ActiveRecord::Migration
  def change
    create_table :favorite_collections do |t|
      t.integer :collection_id, null: false
      t.integer :customer_id, null: false
    end
  end
end
