class AddBasicRowsToCategory < ActiveRecord::Migration
  def change
    Category.create({:description => 'Music'})
    Category.create({:description => 'Xbox360'})
    Category.create({:description => 'Software'})
    Category.create({:description => 'Video'})    
  end
end
