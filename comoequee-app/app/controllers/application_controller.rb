# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end
  helper_method :current_user

  def authorize
    redirect_to login_url unless current_user
  end
end
