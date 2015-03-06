class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def login_required
    if session[:user_id].nil?
      redirect_to login_users_path, notice: 'Debes logearte primero'
    end
  end
end
