class CreateMedium < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :name, null: false
    end
  end
end
