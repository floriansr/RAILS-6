class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:profile]
  before_action :set_user, only: [:show]


  def profile
  	@lastname = current_user.lastname.slice(0,1)
  end

  def show
  	@lastname = current_user.lastname.slice(0,1)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end