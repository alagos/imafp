class Status < ActiveRecord::Base
  attr_accessible :description, :order
  has_many :wishes
end
