class UsersController < ApplicationController
  def show
    @user = current_user
    @lineups = @user.lineups
  end
end
