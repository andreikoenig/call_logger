class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include Pundit
  after_action :verify_authorized, unless: :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  around_action :set_time_zone, if: :current_user

  private

  def set_time_zone(&block)
  	Time.use_zone(current_user.time_zone, &block)
  end

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action!"
    redirect_to(request.referrer || root_path)
  end

end
