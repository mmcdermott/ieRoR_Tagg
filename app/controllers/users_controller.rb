class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find_by_id(params[:id])
    @tutorials = @user.tutorials
  end

  def create
    @user = User.create(params[:user])
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
end
