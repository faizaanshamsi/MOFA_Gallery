class CreateArtist < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :contact_info, null: false
      t.string :birthplace, null: false
      t.integer :style_id, null: false
    end
  end
end
