class Tutorial < ActiveRecord::Base
  attr_accessible :link, :name
  
  has_many :users, through: :rankings
  has_many :rankings
end
