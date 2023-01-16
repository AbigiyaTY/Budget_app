class CategoryPayment < ApplicationRecord
  belongs_to :payment, foreign_key: 'payment_id', class_name: 'Payment'
  belongs_to :category, foreign_key: 'category_id', class_name: 'Category'

  validates :category, presence: true
  validates :payment, presence: true
end
