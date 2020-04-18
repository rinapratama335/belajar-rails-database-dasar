class AccountsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # render plain: params.inspect

    @user = User.new(resource_params)
    @user.save
    redirect_to new_account_path
  end

  private
  def resource_params
    params.require(:user).permit(:name, :username, :password)
  end
end
