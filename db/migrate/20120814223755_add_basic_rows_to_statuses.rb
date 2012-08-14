class AddBasicRowsToStatuses < ActiveRecord::Migration
  def change
    Status.create({:description => 'To be downloaded', :order => '1'})
    Status.create({:description => 'Downloading', :order => '2'})
    Status.create({:description => 'Downloaded', :order => '3'})
  end
end
