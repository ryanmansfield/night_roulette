class UsersController < ApplicationController

  def new
    # we need @user in our `simple_form_for`
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save

    # no need for app/views/user/create.html.erb
    redirect_to user_path(@user)
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    # no need for app/views/user/update.html.erb
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
