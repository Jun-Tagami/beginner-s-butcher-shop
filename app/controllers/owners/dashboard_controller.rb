class Owners::DashboardController < ApplicationController
  before_action :authenticate_owner!, only: [:show]

  def show
  end
end
