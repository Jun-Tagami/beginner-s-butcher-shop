class Owners::OwnerMembersController < ApplicationController

  def index
    @users = User.all
  end
end
