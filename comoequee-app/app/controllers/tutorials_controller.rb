# frozen_string_literal: true

class TutorialsController < ApplicationController
  def index
    @tutorials = Tutorial.all
  end
end
