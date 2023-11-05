require 'rails_helper'

RSpec.describe Cookbook, type: :model do
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }
  it 'should validate name' do
    cookbook = user.cookbooks.create(
      name: '',
      picture: '',
      difficulty: '',
      prep_time: '',
      total_time: '',
      ingredients: '',
      preparation: '',
      notes: '',
      user_id: ''
    )
    expect(apartment.errors[:street]).to include("can't be blank")
  end
end
