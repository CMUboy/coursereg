class ApplicationController < ActionController::Base
  before_action :authenticate_account!

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def admin_only
    unless current_account.admin?
      redirect_to root_path, alert: "You are not allowed to access this feature."
    end
  end
end
