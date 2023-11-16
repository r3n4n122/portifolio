class UsersController < ApplicationController

  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit 
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    return redirect_to users_url if @user.save

    flash[:alert] = "Todos campos devem ser preenchidos"
    render :new
  end

  def update 
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_url
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url
  end

  def user_params 
    params.require(:user).permit(:full_name, :cpf, :cns, :email, :phone, :date_of_birth)
  end
end