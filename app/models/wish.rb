class Wish < ActiveRecord::Base
  attr_accessible :arrival, :category_id, :description, :priority, :status_id, :title, :user_id
end
