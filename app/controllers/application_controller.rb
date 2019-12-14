class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to new_user_session_path, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end

  private

  # Overriding the sign in redirect path 
  def after_sign_in_path_for(resource_or_scope)
    if current_user
      if current_user.admin?
        return "/secret_codes"
      else
        return root_path
      end
    end
  end

end
