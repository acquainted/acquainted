class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    @search = Profile.search(params[:q])
  end
end
