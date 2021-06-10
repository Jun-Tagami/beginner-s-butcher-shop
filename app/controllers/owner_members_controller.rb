class OwnerMembersController < ApplicationController

  def index
    @users = User.all
  end
  
end
