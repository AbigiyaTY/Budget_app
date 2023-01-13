require 'rails_helper'

RSpec.describe Payment, type: :system do
  subject(:transaction) { Payment.create(name: 'Burger', amount: 20, user_id: 1) }

  it 'should not be empty' do
    transaction.name = nil
    expect(transaction).to_not be_valid
  end

  it 'should have the right value' do
    expect(transaction.name).to eq('Burger')
  end

  it 'should not be empty' do
    transaction.amount = nil
    expect(transaction).to_not be_valid
  end

  it 'should have the right value' do
    expect(transaction.amount).to eq(20.to_i)
  end

  it 'should have user id 1' do
    expect(transaction.user_id).to eq(1)
  end
end
