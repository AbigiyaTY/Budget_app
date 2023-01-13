require 'rails_helper'

RSpec.describe Payment, type: :model do
  subject(:transaction) { Payment.create(name: 'Bodyshop cream', amount: 45, user_id: 1) }

  it 'should not be empty' do
    transaction.name = nil
    expect(transaction).to_not be_valid
  end

  it 'should have the right value' do
    expect(transaction.name).to eq('Bodyshop cream')
  end

  it 'should not be empty' do
    transaction.amount = nil
    expect(transaction).to_not be_valid
  end

  it 'should have the right value' do
    expect(transaction.amount).to eq(45.to_i)
  end

  it 'should have user id 1' do
    expect(transaction.user_id).to eq(1)
  end
end
