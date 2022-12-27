require 'rails_helper'

RSpec.describe Group, type: :model do
  subject(:group) { Group.create(name: 'Bodyshop cream', icon: 'https://www.shutterstock.com/image-photo/amsterdam-netherlands-august-30-2014-260nw-215095639.jpg', user_id: 1) }

  it 'should not be empty' do
    group.name = nil
    expect(group).to_not be_valid
  end

  it 'should have the right value' do
    expect(group.name).to eq('Bodyshop cream')
  end

  it 'should not be empty' do
    group.icon = nil
    expect(group).to_not be_valid
  end

  it 'should have the right value' do
    expect(group.icon).to eq('https://www.shutterstock.com/image-photo/amsterdam-netherlands-august-30-2014-260nw-215095639.jpg')
  end

  it 'should have user id 1' do
    expect(group.user_id).to eq(1)
  end
end
