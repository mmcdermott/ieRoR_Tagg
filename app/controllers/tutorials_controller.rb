class TutorialsController < ApplicationController
  before_filter :get_user, except: :allTutorials

  def new
    @tutorial = @user.tutorials.new
  end

  def show
    @tutorial = @user.tutorials.find_by_id params[:id]
  end

  def index
    @tutorials= @user.tutorials.all
  end

  def create
    @tutorial = @user.tutorials.build params[:tutorial]
    if @tutorial.save
      redirect_to @tutorial
    else
      render 'new'
    end
  end

  def all
    @tutorials = Tutorial.all
  end

  private
    def get_user
      @user = User.find_by_id(params[:user_id])
    end
end
