class CreateCollection < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name, null: false
    end
  end
end
