class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :title
      t.string :description
      t.integer :priority
      t.date :arrival
      t.integer :status_id
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
