class StaticPagesController < ApplicationController
  def home
  end

  def roster
    @users = User.where(admin_level: 'Student')
    @projects = Project.all
  end

  def about
  end

  def contact
  end
end
