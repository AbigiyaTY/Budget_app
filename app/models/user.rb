class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :trackable

  has_many :categories, foreign_key: 'user_id', class_name: 'Category'
  has_many :payments, foreign_key: 'user_id', class_name: 'Payment'

  validates :name, presence: true
  ROLES = %i[admin default].freeze
end
