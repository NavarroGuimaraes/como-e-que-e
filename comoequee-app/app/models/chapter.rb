# frozen_string_literal: true

class Chapter < ApplicationRecord
  belongs_to :tutorial
  has_many :content, dependent: :destroy
end
