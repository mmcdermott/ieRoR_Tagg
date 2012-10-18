class TutorialsController < ApplicationController
  def new
    @tutorial = current_user.tutorials.new
  end

  def show
    @tutorial = Tutorial.find_by_id params[:id]
  end

  def index
    @tutorials= Tutorial.all
  end

  def create
    @tutorial = current_user.tutorials.build params[:tutorial]
    if @tutorial.save
      redirect_to @tutorial
    else
      render 'new'
    end
  end
end
