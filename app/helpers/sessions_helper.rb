module SessionsHelper

    # Logs in the given user.
    def log_in(user)
      session[:user_id] = user.id
    end
  
    # Returns the current logged-in user (if any).
    def current_user
      if session[:user_id]
        @current_user ||= User.find_by(id: session[:user_id])
      end
    end
  
    # Returns true if the user is logged in, false otherwise.
    def logged_in?
      !current_user.nil?
    end

    # Returns true if the user is a system user, false otherwise.
    def system_user?
      current_user.admin_level == "System"
    end

    # Returns true if the user is a teaching user (teacher, TA), false otherwise.
    def teaching_user?
      system_user? || current_user.admin_level == "Teacher" || current_user.admin_level == "TA"
    end

    # Logs out the current user.
    def log_out
        session.delete(:user_id)
        @current_user = nil
    end
  end