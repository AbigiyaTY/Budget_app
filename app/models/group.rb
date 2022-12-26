class Group < ApplicationRecord
  belongs_to :user
  has_many :groups_categories
  has_many :categories

  validates :name, presence: true
  validates :icon, presence: true
end
