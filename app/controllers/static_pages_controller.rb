class StaticPagesController < ApplicationController
  before_action :is_logged_in, only: [:roster, :my_teams]

  def home
  end

  def roster
    @users = User.where(admin_level: 'Student')
    @projects = Project.all
  end

  def about
  end

  def my_teams
  end

  def contact
  end

  private
    # Redirects to home if not logged in
    def is_logged_in
      redirect_to(root_url) unless logged_in?
    end
end
