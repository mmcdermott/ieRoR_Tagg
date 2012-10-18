class Tutorial < ActiveRecord::Base
  default_scope order "cached_rating DESC"

  attr_accessible :link, :name
  
  belongs_to :user
  has_many :rankings
end
