# frozen_string_literal: true

class TutorialsController < ApplicationController
  def index
    @tutorials = Tutorial.order(:name).paginate(page: params[:page], per_page: 1)
  end
end
