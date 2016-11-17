class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bailleurs = @user.bailleurs
    @locataires = @user.locataires
  end
end
