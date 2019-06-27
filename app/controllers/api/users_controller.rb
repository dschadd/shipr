class Api::UsersController < ApplicationController
  
  def index
    @users = User.all
    render "index.json.jbuilder"
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
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
