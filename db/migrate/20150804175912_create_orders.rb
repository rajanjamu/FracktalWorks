class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :title
      t.boolean :status
      t.date :completed

      t.timestamps null: false
    end
  end
end
