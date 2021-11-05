class Owners::DashboardController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def show
  end
end
