class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :description
      t.integer :order

      t.timestamps
    end
  end
end
