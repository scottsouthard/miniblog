class UsersController < ApplicationController

  def new
    @user = User.new
    render :'users/new'
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render :'users/new'
    end
  end

  def show
    @user = User.find(session[:user_id])
  end


  private
    def user_params
        params.require(:user).permit(:full_name, :email, :password)
    end
end
