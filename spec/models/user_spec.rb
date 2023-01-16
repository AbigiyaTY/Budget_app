require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.create(name: 'Abigiya') }

  it 'should not be empty' do
    user.name = nil
    expect(user).to_not be_valid
  end

  it 'should have the right value' do
    expect(user.name).to eq('Abigiya')
  end
end
