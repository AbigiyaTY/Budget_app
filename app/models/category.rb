class Category < ApplicationRecord
  belongs_to :user
  has_many :category_payments
  has_many :payments, through: :category_payments

  validates :name, presence: true
  validates :icon, presence: true

  def calculate_transaction
    sum = 0
    payments.each do |x|
      sum += x.amount
    end
    sum
  end
end
