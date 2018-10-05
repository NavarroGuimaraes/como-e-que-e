# frozen_string_literal: true

class TutorialsController < ApplicationController
  def index
    @tutorials = [1,2,3,4]
  end
end
