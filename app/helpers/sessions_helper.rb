# frozen_string_literal: true

# Defines helpers to be used with sessions
module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  # Returns true if the given user is the current user.
  def current_user?(user)
    user && user == current_user
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  # Returns true if the user is a system user, false otherwise.
  def system_user?
    logged_in? && current_user.admin_level == 'System'
  end

  # Returns true if the user is a teaching user (teacher, TA), false otherwise.
  def teaching_user?
    logged_in? && (system_user? || current_user.admin_level == 'Teacher' || current_user.admin_level == 'TA')
  end

  # Logs out the current user.
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  # Redirects to stored location (or to the default).
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
end
