class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user 
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
# rescue <-- do this when can't find user_id=1 
# 	@current_user = nil
# 	@session[:user_id] = nil 

  end

  helper_method :current_user
end
