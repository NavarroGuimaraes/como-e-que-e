# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures name presence' do
      user = User.new(name: 'name').save
      expect(user).to eq(false)
    end


    it 'ensures email presence' do
      user = User.new(email: 'example@example.com').save
      expect(user).to eq(false)
    end

    it 'ensures password presence' do
      user = User.new(password: 'testPassword').save
      expect(user).to eq(false)
    end

    it 'ensures password_confirmation presence' do
      user = User.new(password_confirmation: 'testPassword').save
      expect(user).to eq(false)
    end

    it 'ensures all arguments presence' do
      user = User.new(name: 'a', password: 'a', password_confirmation: 'a', email: 'a@gmail.com').save
      expect(user).to eq(true)
    end
  end
end
