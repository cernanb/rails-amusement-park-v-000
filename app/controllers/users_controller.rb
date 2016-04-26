class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # raise params.inspect
    @user = User.new(user_params)
    # raise @user.inspect
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome to the theme park!"
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:name, :tickets, :nausea, :happiness, :height, :admin)
    end
end
