class Post < ApplicationRecord
  belongs_to :user
  has_many :applications
  has_many :post_categories
  has_many :categories, through: :post_category
end