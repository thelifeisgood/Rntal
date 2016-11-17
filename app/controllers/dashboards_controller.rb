class DashboardsController < ApplicationController
  def search
    @bailleurs = current_user.bailleurs(params[:id])
  end
end
