class OwnerController < ApplicationController
 before_action :authenticate_owner!, only: [:index]
  def index
  end
end
