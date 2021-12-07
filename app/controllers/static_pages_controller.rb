# frozen_string_literal: true

# This controls actions that can be performed on static pages
class StaticPagesController < ApplicationController
  before_action :logged_in?, only: %i[roster my_teams]

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

  # Redirects to home if not logged in
  def logged_in?
    redirect_to(root_url) unless logged_in?
  end
end
