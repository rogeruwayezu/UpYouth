class Post < ApplicationRecord
  belongs_to :user
  has_many :applications
  has_many :submissions

  has_many :post_skills
  has_many :skills, through: :post_skills

  has_many :post_categories
  has_many :categories, through: :post_categories

  def self.search(search)
    if search
      find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
  
end
