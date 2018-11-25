# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SessionController, type: :controller do
  context 'validation de email' do
    it 'return nil for an nonexistent email in database' do
      user = User.find_by_email('2@2.com')
      expect(user).to eq(nil)
    end
  end
end
