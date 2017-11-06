class Category < ApplicationRecord
  has_many :post_categories
  has_many :posts, through: :post_categories

  has_many :profile_categories
  has_many :profiles, through: :profile_categories
  
end
