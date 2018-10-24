# frozen_string_literal: true

class User < ApplicationRecord
  # Validation
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, 'valid_email_2/email': true
  has_secure_password
end
