class AddBasicRowsToDevices < ActiveRecord::Migration
  def change
    Device.create({:description => 'Home laptop'})
    Device.create({:description => 'Office'})
  end
end
