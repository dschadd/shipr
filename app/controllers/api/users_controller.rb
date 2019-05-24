class Api::UsersController < ApplicationController
  
  def index
    @users = User.all
    render "index.json.jbuilder"
  end

  def create
    # Use devise or JWT
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    # Find if there is a better way to update user
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy    
  end

end
