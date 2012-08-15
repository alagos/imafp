class Wish < ActiveRecord::Base
  attr_accessible :arrival, :category_id, :description, :priority, :status_id, :title, :user_id, :device_id
  belongs_to :status
  belongs_to :category
  belongs_to :device
  belongs_to :user
  
  validates :title, :presence => true
  validates :priority, :inclusion => { :in => 1..5, #(1..5).to_a,
    :message => "%{value} is not a valid priority", :allow_nil => true }
end
