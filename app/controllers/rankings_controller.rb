class RankingsController < ApplicationController
  def up
    @tutorial = Tutorial.find params[:tutorial_id]
    unless (ranking = @tutorial.rankings.find_by_user_id(current_user.id)).nil?
      if ranking.vote == 1
        redirect_to root_path 
        return
      end
      ranking.delete
      @tutorial.update_attribute :cached_rating, (@tutorial.cached_rating + 1)
    end
    @tutorial.rankings.create vote: 1, user_id: current_user.id
    redirect_to root_path
  end

  def down
    @tutorial = Tutorial.find params[:tutorial_id]
    unless (ranking = @tutorial.rankings.find_by_user_id(current_user.id)).nil?
      if ranking.vote == -1
        redirect_to root_path 
        return
      end
      ranking.delete
      @tutorial.update_attribute :cached_rating, (@tutorial.cached_rating - 1)
    end
    @tutorial.rankings.create vote: -1, user_id: current_user.id
    redirect_to root_path
  end
end
