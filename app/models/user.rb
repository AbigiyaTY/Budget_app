class User < ApplicationRecord
  has_many :categories
  has_many :groups

  validates :name, presence: true
end
