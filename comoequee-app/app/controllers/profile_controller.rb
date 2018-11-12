# frozen_string_literal: true

class ProfileController < ApplicationController
  before_action :authorize

  def index
    @user = current_user.name
  end
end
