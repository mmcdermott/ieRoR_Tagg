class Ranking < ActiveRecord::Base
  attr_accessible :tutorial_id, :user_id, :vote

  validates_numericality_of :vote, only_integer: true, less_than_or_equal_to: 1, greater_than_or_equal_to: -1

  belongs_to :user
  belongs_to :tutorial

  after_create :update_cached_rating

  private
    def update_cached_rating
      tutorial.cached_rating += vote
      tutorial.save
    end
end
