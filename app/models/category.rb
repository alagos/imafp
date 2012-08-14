class Category < ActiveRecord::Base
  attr_accessible :description
  
  has_many :wishes
  
  def self.simplified
    select('id,description').order('description')
  end
end
