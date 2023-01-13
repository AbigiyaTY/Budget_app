require 'rails_helper'

RSpec.describe Category, type: :system do
  subject(:category) { Category.create(name: 'Food', icon: 'https://freepngimg.com/download/burger/6-2-burger-png-image.png', user_id: 1) }

  it 'should not be empty' do
    category.name = nil
    expect(category).to_not be_valid
  end

  it 'should have the right value' do
    expect(category.name).to eq('Food')
  end

  it 'should not be empty' do
    category.icon = nil
    expect(category).to_not be_valid
  end

  it 'should have the right value' do
    expect(category.icon).to eq('https://freepngimg.com/download/burger/6-2-burger-png-image.png')
  end

  it 'should have user id 1' do
    expect(category.user_id).to eq(1)
  end
end
