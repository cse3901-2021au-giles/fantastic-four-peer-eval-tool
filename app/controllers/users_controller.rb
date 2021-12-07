# frozen_string_literal: true

# This controls actions that can be performed on users
class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[edit update]
  before_action :correct_user, only: %i[edit update]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.admin_level = 'Student' if @user.admin_level.nil?
    if @user.save
      reset_session
      log_in @user
      flash[:success] = 'Welcome to the Sample App!'
      redirect_to @user
    else
      render 'new'
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = 'Profile updated'
      redirect_to @user
    else
      render 'edit'
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

  # Confirms a logged-in user.
  def logged_in_user
    return if logged_in? # Guard clause

    store_location
    flash[:danger] = 'Please log in.'
    redirect_to login_url
  end

  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user) || system_user?
  end
end
