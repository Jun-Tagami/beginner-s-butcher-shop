class OwnerMembersController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :authenticate_owner!, only: [:index]

  def index
    @users = User.all
  end
end
