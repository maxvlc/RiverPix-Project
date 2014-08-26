class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!

  def show
	  @user = User.find(params[:id])
	end

	def destroy
    @user = User.find(params[:id])

    if @user.destroy
      redirect_to root_url, notice: "User deleted."
    end
  end
end