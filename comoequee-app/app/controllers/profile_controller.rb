# frozen_string_literal: true

class ProfileController < ApplicationController
  before_action :authorize

  def index
    @user = current_user
    @actual_courses = UserTutorial.where('conclusion < 100 AND user_id = ?', current_user.id).joins('INNER JOIN tutorials ON tutorials.id = user_tutorials.tutorial_id')
    @learn_courses = UserTutotial.where('user_id = ?', current_user.id).where(tutorial_id: UserTutorial.where('user_id = ?', current_user.id)).joins('INNER JOIN tutorials ON tutorials.id = user_tutorials.tutorial_id')
    @remember_courses = UserTutorial.where('conclusion = 100 AND user_id = ?', current_user.id).joins('INNER JOIN tutorials ON tutorials.id = user_tutorials.tutorial_id').joins('INNER JOIN tutorials ON tutorials.id = user_tutorials.tutorial_id')
  end
end
