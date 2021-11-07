class Owners::MembersController < ApplicationController

  def index
    @users = User.all
  end
end
