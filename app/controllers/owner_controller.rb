class OwnerController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :authenticate_owner!, only: [:index]

  def index
   if user_signed_in? && owner_signed_in?
   else
    render :home_index_path
   end
  end
end