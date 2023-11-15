class UsersController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def update 

  end

  def user_params 
    params.require(:user).permit(:full_name, :cpf, :cns, :email, :phone, :date_of_birth)
  end
end