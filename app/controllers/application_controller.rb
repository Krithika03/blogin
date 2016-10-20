class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  def current_user
    User.find(session[:current_user_id])
  end

  helper_method :current_user
  rescue_from Pundit::NotAuthorizedError, with: :User_not_authorized
  def User_not_authorized
  flash[:alert] = "You are not authorized to perform this action."
  redirect_to(request.referrer || root_path)
  end
end
