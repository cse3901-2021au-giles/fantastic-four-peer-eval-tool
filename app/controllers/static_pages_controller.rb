# frozen_string_literal: true

# This controls actions that can be performed on static pages
class StaticPagesController < ApplicationController
  before_action :logged_in_user, only: %i[roster my_teams]

  # GET /home
  def home; end

  # GET /roster
  def roster
    @users = User.where(admin_level: 'Student')
    @projects = Project.all
  end

  # GET /about
  def about; end

  # GET /my_teams
  def my_teams; end

  # GET /contact
  def contact; end

  private

  # Confirms a logged-in user.
  def logged_in_user
    return if logged_in? # Guard clause

    store_location
    flash[:danger] = 'Please log in.'
    redirect_to login_url
  end
end
