class Post < ApplicationRecord

  belongs_to :user
  has_many :applications
  belongs_to :category
  
end
