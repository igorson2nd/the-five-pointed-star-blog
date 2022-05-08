class ApplicationController < ActionController::Base
  helper_method :current_user
  def current_user
    return nil if ! session[:username]
    @current_user = User.find_by(username: session[:username])
    return @current_user
  end
end
