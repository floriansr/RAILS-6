class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:profile]

  def profile
  	@lastname = current_user.lastname.slice(0,1)
  end

end