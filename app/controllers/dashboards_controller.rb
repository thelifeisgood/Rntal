class DashboardsController < ApplicationController
  before_action :set_dashboard

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard
    @bailleurs = current_user.bailleurs(params[:id])
    end
end
