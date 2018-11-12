# frozen_string_literal: true

class User < ApplicationRecord
  # Validation
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, 'valid_email_2/email': true
  has_secure_password

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.email = auth.info.email
      user.password = '00000000'
      user.password_confirmation = '00000000'
      user.save!
    end
  end
end
