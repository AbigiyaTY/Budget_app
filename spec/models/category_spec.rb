require 'rails_helper'

RSpec.describe Category, type: :model do
  subject(:category) { Category.create(name: 'Bodyshop cream', amount: 45, user_id: 1) }

  it 'should not be empty' do
    category.name = nil
    expect(category).to_not be_valid
  end

  it 'should have the right value' do
    expect(category.name).to eq('Bodyshop cream')
  end

  it 'should not be empty' do
    category.amount = nil
    expect(category).to_not be_valid
  end

  it 'should have the right value' do
    expect(category.amount).to eq(45)
  end

  it 'should have user id 1' do
    expect(category.user_id).to eq(1)
  end
end
