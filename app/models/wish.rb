class Wish < ActiveRecord::Base
  attr_accessible :arrival, :category_id, :description, :priority, :status_id, :title, :user_id
  belongs_to :status
  belongs_to :category
  belongs_to :device
  belongs_to :user
end
