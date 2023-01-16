require 'rails_helper'

RSpec.describe Category, type: :model do
  subject(:category) { Category.create(name: 'Bodyshop cream', icon: 'https://www.shutterstock.com/image-photo/amsterdam-netherlands-august-30-2014-260nw-215095639.jpg', user_id: 1) }

  it 'should not be empty' do
    category.name = nil
    expect(category).to_not be_valid
  end

  it 'should have the right value' do
    expect(category.name).to eq('Bodyshop cream')
  end

  it 'should not be empty' do
    category.icon = nil
    expect(category).to_not be_valid
  end

  it 'should have the right value' do
    expect(category.icon).to eq('https://www.shutterstock.com/image-photo/amsterdam-netherlands-august-30-2014-260nw-215095639.jpg')
  end

  it 'should have user id 1' do
    expect(category.user_id).to eq(1)
  end
end
