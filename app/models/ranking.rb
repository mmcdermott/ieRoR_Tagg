class Ranking < ActiveRecord::Base
  attr_accessible :tutorial_id, :user_id, :vote

  belongs_to :user
  belongs_to :tutorial
end
