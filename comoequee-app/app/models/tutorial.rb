# frozen_string_literal: true

class Tutorial < ApplicationRecord
  has_many :chapter, dependent: :destroy
end
