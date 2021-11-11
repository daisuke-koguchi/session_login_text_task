class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      #成功
      redirect_to user_path(@user.id)
      binding.pry
    else
      #失敗
      render :new
    end
  def show
    @user = User.find(params[:id])
  end
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, 
                                :password_confirmation)
  end
end
