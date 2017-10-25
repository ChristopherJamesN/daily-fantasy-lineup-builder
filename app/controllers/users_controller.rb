class UsersController < ApplicationController
  def show
    @user = current_user
    @lineups = @user.lineups
    @this_weeks_lineups = @lineups.this_weeks_lineups
  end
end
