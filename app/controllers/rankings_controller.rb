class RankingsController < ApplicationController
  def up
    @tutorial = Tutorial.find params[:tutorial_id]
    @tutorial.rankings.create vote: 1, user_id: current_user.id
    redirect_to root_path
  end

  def down
    @tutorial = Tutorial.find params[:tutorial_id]
    @tutorial.rankings.create vote: -1, user_id: current_user.id
    redirect_to root_path
  end
end
