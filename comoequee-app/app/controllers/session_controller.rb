# frozen_string_literal: true

class SessionController < ApplicationController
  def new
    if session[:user_id] != nil
      redirect_to index_url
    end
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to index_url
    else
      redirect_to login_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to index_url
  end
end
