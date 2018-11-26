# frozen_string_literal: true

class IndexController < ApplicationController
  def index
    @tutorials = Tutorial.limit(4)
  end
end
