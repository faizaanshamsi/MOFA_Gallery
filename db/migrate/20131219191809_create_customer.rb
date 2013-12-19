class CreateCustomer < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :contact_info, null: false
    end
  end
end
